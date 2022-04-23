package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/ClassLoaderHelper.class */
public enum ClassLoaderHelper {
    ;

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
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str);
        }
        return cls2;
    }

    public static Class<?> loadClass(String str, Class<?>... clsArr) throws ClassNotFoundException {
        return loadClass(str, true, clsArr);
    }

    public static Class<?> loadClassViaClasses(String str, Class<?>[] clsArr) {
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

    public static Class<?> loadClassViaContext(String str) {
        Class<?> cls;
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader == null) {
            cls = null;
        } else {
            try {
                cls = contextClassLoader.loadClass(str);
            } catch (ClassNotFoundException e) {
                cls = null;
            }
        }
        return cls;
    }
}
