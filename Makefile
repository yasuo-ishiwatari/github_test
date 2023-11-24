CC = gcc
 
CFLAGS = -Wall
LDFLAGS =
 
TARGET = test
SRCS = gitHubTest.c
OBJS = $(SRCS:.c=.o)
 
RM = rm -f
 
all: $(TARGET)
 
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^
 
.c.o:
	$(CC) $(CFLAGS) -c $<
 
 
clean:
	$(RM) $(OBJS) $(TARGET)
 
clean_obj:
	$(RM) $(OBJS)
 
clean_target:
	$(RM) $(TARGET)
