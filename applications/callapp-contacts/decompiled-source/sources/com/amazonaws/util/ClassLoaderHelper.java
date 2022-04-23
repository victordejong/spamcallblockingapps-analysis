package com.amazonaws.util;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/ClassLoaderHelper.class */
public enum ClassLoaderHelper {
    ;

    public static URL getResource(String str, boolean z, Class<?>... clsArr) {
        URL url;
        if (z) {
            URL resourceViaClasses = getResourceViaClasses(str, clsArr);
            url = resourceViaClasses;
            if (resourceViaClasses == null) {
                url = getResourceViaContext(str);
            }
        } else {
            URL resourceViaContext = getResourceViaContext(str);
            url = resourceViaContext;
            if (resourceViaContext == null) {
                url = getResourceViaClasses(str, clsArr);
            }
        }
        return url == null ? ClassLoaderHelper.class.getResource(str) : url;
    }

    public static URL getResource(String str, Class<?>... clsArr) {
        return getResource(str, false, clsArr);
    }

    public static InputStream getResourceAsStream(String str, boolean z, Class<?>... clsArr) {
        URL resource = getResource(str, z, clsArr);
        if (resource == null) {
            return null;
        }
        try {
            return resource.openStream();
        } catch (IOException e) {
            return null;
        }
    }

    public static InputStream getResourceAsStream(String str, Class<?>... clsArr) {
        return getResourceAsStream(str, false, clsArr);
    }

    private static URL getResourceViaClasses(String str, Class<?>[] clsArr) {
        if (clsArr == null) {
            return null;
        }
        for (Class<?> cls : clsArr) {
            URL resource = cls.getResource(str);
            if (resource != null) {
                return resource;
            }
        }
        return null;
    }

    private static URL getResourceViaContext(String str) {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader == null) {
            return null;
        }
        return contextClassLoader.getResource(str);
    }

    public static Class<?> loadClass(String str, boolean z, Class<?>... clsArr) throws ClassNotFoundException {
        Class<?> cls;
        if (z) {
            Class<?> loadClassViaClasses = loadClassViaClasses(str, clsArr);
            cls = loadClassViaClasses;
            if (loadClassViaClasses == null) {
                cls = loadClassViaContext(str);
            }
        } else {
            Class<?> loadClassViaContext = loadClassViaContext(str);
            cls = loadClassViaContext;
            if (loadClassViaContext == null) {
                cls = loadClassViaClasses(str, clsArr);
            }
        }
        return cls == null ? Class.forName(str) : cls;
    }

    public static Class<?> loadClass(String str, Class<?>... clsArr) throws ClassNotFoundException {
        return loadClass(str, true, clsArr);
    }

    private static Class<?> loadClassViaClasses(String str, Class<?>[] clsArr) {
        if (clsArr == null) {
            return null;
        }
        for (Class<?> cls : clsArr) {
            ClassLoader classLoader = cls.getClassLoader();
            if (classLoader != null) {
                try {
                    return classLoader.loadClass(str);
                } catch (ClassNotFoundException e) {
                }
            }
        }
        return null;
    }

    private static Class<?> loadClassViaContext(String str) {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader == null) {
            return null;
        }
        try {
            return contextClassLoader.loadClass(str);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }
}
