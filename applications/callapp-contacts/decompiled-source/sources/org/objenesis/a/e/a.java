package org.objenesis.a.e;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/e/a.class */
final class a {
    a() {
    }

    private static Class<?> a() {
        try {
            return Class.forName("sun.reflect.ReflectionFactory");
        } catch (ClassNotFoundException e) {
            throw new ObjenesisException(e);
        }
    }

    private static Object a(Class<?> cls) {
        try {
            return cls.getDeclaredMethod("getReflectionFactory", new Class[0]).invoke(null, new Object[0]);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
            throw new ObjenesisException(e);
        }
    }

    public static <T> Constructor<T> a(Class<T> cls, Constructor<?> constructor) {
        Class<?> a2 = a();
        try {
            return (Constructor) b(a2).invoke(a(a2), cls, constructor);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            throw new ObjenesisException(e);
        }
    }

    private static Method b(Class<?> cls) {
        try {
            return cls.getDeclaredMethod("newConstructorForSerialization", Class.class, Constructor.class);
        } catch (NoSuchMethodException e) {
            throw new ObjenesisException(e);
        }
    }
}
