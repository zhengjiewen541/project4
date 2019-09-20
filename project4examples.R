# Use the function read.csv to read in the data about the 2019 airplane flights
myDF <- read.csv("/class/datamine/data/flights/2019.csv")

# This file has almost 3 million records, and 110 columns:
dim(myDF)

# Here are the first 6 flights:
head(myDF)

# The names of the columns are:
names(myDF)

# These are the 3-letter codes of the airports where flights have their origins:
table(myDF$ORIGIN)

# Here they are in sorted order:
sort(table(myDF$ORIGIN))

# and the most popular ones are
# Los Angeles, Charlotte, Denver, Dallas-Fort Worth, O'Hare, and Atlanta:
tail(sort(table(myDF$ORIGIN)))

# The origin airports of the first 100 flights are:
head(myDF$ORIGIN, n=100)

# Notice that R starts each line with the number of the current data point.
# This varies, according to the width of your screen!

# The destination airports of the first 100 flights are:
head(myDF$DEST, n=100)

# We can paste the origins and destinations
head(paste(myDF$ORIGIN, myDF$DEST), n=100)

# In other words, the first several flights are all from MSP (Minneapolis) to CVG (Cincinnati)
# and (more generally) we give each origin-to-destination pair, with a space in between.

# We can make a table of all of the possible flight paths
# with the counts about how often they are used:
table(paste(myDF$ORIGIN, myDF$DEST))

# It makes more sense to show the results in sorted order:
sort(table(paste(myDF$ORIGIN, myDF$DEST)))

# but this is a long table, so we show the tail:
tail(sort(table(paste(myDF$ORIGIN, myDF$DEST))))

# OK, so we see that the most popular flight path is from LGA (LaGuardia) to ORD (O'Hare)

# We can insert a new column in our data frame, which we choose to call "myflightpath"
# but you can pick any name that you like, for this new column in the data frame.
myDF$myflightpath <- paste(myDF$ORIGIN, myDF$DEST)

# and now we see this new column at the end of our data frame:
head(myDF)

# We usually *only* look at the head, because
# there are too many flights to look at them all with our eyeballs.

# The departure delays (in minutes) of flights are given in this column:
head(myDF$DEP_DELAY)

# For instance, the average departure delay is not available, because some of the data is missing
mean(myDF$DEP_DELAY)

# but we can remove the missing values, and take an average, based on the data that is not missing:
mean(myDF$DEP_DELAY, na.rm=T)

# The arrival delay is a little less, i.e., airplanes tend to catch up (during the flight) on delays:
mean(myDF$ARR_DELAY, na.rm=T)

# The most popular day to fly (so far) in 2019 was on May 24:
tail(sort(table(myDF$FL_DATE)))

# We encourage you to try some examples yourself!
# The more that you play with R and with the available functions,
# the more comfort that you will build with this new tool.




