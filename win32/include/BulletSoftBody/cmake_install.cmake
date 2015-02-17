# Install script for directory: /Users/vaughamhong/Work/active/bullet/src/BulletSoftBody

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/Library/Frameworks")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/vaughamhong/Work/active/bullet/src/BulletSoftBody/BulletSoftBody.framework" USE_SOURCE_PERMISSIONS)
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./BulletSoftBody.framework/Versions/2.81/BulletSoftBody" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./BulletSoftBody.framework/Versions/2.81/BulletSoftBody")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "/Library/Frameworks/BulletSoftBody.framework/Versions/2.81/BulletSoftBody"
      -change "/Users/vaughamhong/Work/active/bullet/src/BulletCollision/BulletCollision.framework/Versions/2.81/BulletCollision" "/Library/Frameworks/BulletCollision.framework/Versions/2.81/BulletCollision"
      -change "/Users/vaughamhong/Work/active/bullet/src/BulletDynamics/BulletDynamics.framework/Versions/2.81/BulletDynamics" "/Library/Frameworks/BulletDynamics.framework/Versions/2.81/BulletDynamics"
      -change "/Users/vaughamhong/Work/active/bullet/src/LinearMath/LinearMath.framework/Versions/2.81/LinearMath" "/Library/Frameworks/LinearMath.framework/Versions/2.81/LinearMath"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./BulletSoftBody.framework/Versions/2.81/BulletSoftBody")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./BulletSoftBody.framework/Versions/2.81/BulletSoftBody")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

