## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## Taking understanding from makeVector function four methods are listed in makeCacheMatrix

makeCacheMatrix <- function(x = matrix()) {

  i <- NULL ## Initialling with zero elements
  
  ## First method to set the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## Second method to the get the matrix
  get <- function() {
    m  ## Return the matrix
  }
  
  ## Third method to set the inverse the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Fourth Method to get the inverse the matrix
  getInverse <- function() {
    
    i ## Return the inverse matrix
  }
  
  ## Return a list of all the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function


## Again Taking understanding from cachemean function process using methods

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
      m <- x$getInverse()
  
      ## Return the inverse if its already set
      if( !is.null(m) ) {
        message("getting cached data")
        return(m)
      }
  
      ## Get the matrix from object
      data <- x$get()
  
      ## Matrix multiplication to calculate inverse
      m <- solve(data) %*% data
  
      ## Set the inverse the object
      x$setInverse(m)
  
      ## Return the matrix
      m
}
