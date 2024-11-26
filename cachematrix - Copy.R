## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Initialize the cached inverse as NULL
  
  # Function to set the matrix
  set <- function(y) {
    x <<- y  # Assign the new matrix
    inv <<- NULL  # Reset the cached inverse
  }
  
  # Function to get the matrix
  get <- function() {
    x
  }
  
  # Function to set the cached inverse
  setinverse <- function(inverse) {
    inv <<- inverse
  }
  
  # Function to get the cached inverse
  getinverse <- function() {
    inv
  }
  
  # Return a list of the above functions
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cacheSolve <- function(x, ...) {
  # Check if the inverse is already cached
  inv <- x$getinverse()
  if (!is.null(inv)) {
    message("Getting cached inverse")  # Notify the user
    return(inv)  # Return the cached inverse
  }
  
  # If not cached, compute the inverse
  data <- x$get()  # Get the matrix
  inv <- solve(data, ...)  # Compute the inverse using solve()
  x$setinverse(inv)  # Cache the computed inverse
  inv  # Return the inverse
}

