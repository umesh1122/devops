#!/bin/bash
echo the file  name is $1 and the comment is $2
#read -r $1
if [ -f "$1" ] && [ "$2" != "null" ] 
then
  echo "You found the file and also have athe comment for the file"
	echo Performing git operations to pust file to github
	git add $1
	git commit -m "$2"
	git push mygithub


#elif [ "$2" != "" ]
#then
#	echo "please enter the comment for the file"
else 
  echo "You haven't found the file or there is no comment argument passed"
fi
