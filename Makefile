# Set the compiler to use. or any other makefile variables
CC = gcc

# Make a list of all the source files that end in .cpp
SRCS = $(wildcard *.cpp)

# Make a list of all object files. This can be automatically expanded
OBJS = $(SRCS:.c=.o)

# what is require goes first. After the colon are the required items. Then what
# to do is indented
# $@ is an automatic variable that is the target name
main.exe : $(OBJS)
	$(CC) $(OBJS) -o  $@
	@echo $@


# Create all object files.
# "%" is basically a wildcard
# "$<" inserts the filename
%.o: %.cpp
	$(CC) -c $<




clean:
	rm -f *.o *.out *.exe