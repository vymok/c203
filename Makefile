
# Anh Vo, for unimelb.COMP20003.workshop.week2
# the lines preceded by # are just comments
#

# The actual content of this "Makefile" file is just in lines 8-12

toy: intArray.c prime.c main.c
	gcc -g -o toy main.c prime.c intArray.c

clean: 
	rm -f *.o toy


# Explainations:
# In lines 8 and 11, "toy" is a target, "clean" is a target
 
# target "toy" has 3 dependencies: intArray.c, prime.c, and main.c,
#      that is, it depends on these files, and when 1 of these files
   
# target "toy" is associated with command 
#	gcc -g -o toy main.c prime.c intArray.c
#      ( which contains a single <TAB> at the begin of the line)
    
# If we want to run the command(s) associated with "toy", all we
# need to do is to run from your termainal command line:
#
#        make toy

# How does it work?
#   - command "make toy" will automatically read from the file "Makefile"
#     in your current directory
#   - it look at a tagtet named "toy", and then just execute the commands
#     associated with the target
#   - REMEMBER that you must have the file "Makefile", and that you should
#     not change the filename. If you accidently have Makefile.txt instead,
#     then you have to change the name, by typing thE command:
#          mv Makefile.txt Makefile
 
# So, what are the dependencies for?
#   - after you ran "make toy" successfully, if you try to re-run
#     "make toy", nothing will happen, because "make" sees no need
#     to redo the command "gcc"
#   - but, say, if you now make change to "main.c", and then run "make toy",
#     the "gcc" command will be executed again. That is where dependencies 
#     work. "make" sees that "toy" depends on "main.c", hence when "main.c"
#     change, "make" know that it has to rerun the "gcc".
#
# What is target "clean" for?
#     The command "rm -f *.o toy" means remove (or delete) all files 
#     ending in ".o"  and file "toy" (they are ouput of gcc).
#     So when we run "make clean", all outputs of gcc are deleted.
#     After that, if you run "make toy", the "gcc ..." command will 
#     be executed even if you did not make any change to any files.

# Final note:
# (1) If you run just
#         make
#     (ie with no argument), "make" will search for the first target
#     in "Makefile" and execute that target. In our case, "make" 
#     is equivalent to "make toy".
# (2) Have a look at Makefile2, Makefile3, Makefile4 (in order). Each
#     of them is equivalent to this "Makefile", but is a bit more 
#     complicated and more useful. Learn from them!
               