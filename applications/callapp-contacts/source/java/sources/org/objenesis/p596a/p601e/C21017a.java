package org.objenesis.p596a.p601e;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
/* renamed from: org.objenesis.a.e.a */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/e/a.class */
final class C21017a {
    C21017a() {
    }

    /* renamed from: a */
    private static Class<?> m138a() {
        try {
            return Class.forName("sun.reflect.ReflectionFactory");
        } catch (ClassNotFoundException e) {
            throw new ObjenesisException(e);
        }
    }

    /* renamed from: a */
    private static Object m137a(Class<?> cls) {
        try {
            return cls.getDeclaredMethod("getReflectionFactory", new Class[0]).invoke(null, new Object[0]);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
            throw new ObjenesisException(e);
        }
    }

    /* renamed from: a */
    public static <T> Constructor<T> m136a(Class<T> cls, Constructor<?> constructor) {
        Class<?> m138a = m138a();
        try {
            return (Constructor) m135b(m138a).invoke(m137a(m138a), cls, constructor);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            throw new ObjenesisException(e);
        }
    }

    /* renamed from: b */
    private static Method m135b(Class<?> cls) {
        try {
            return cls.getDeclaredMethod("newConstructorForSerialization", Class.class, Constructor.class);
        } catch (NoSuchMethodException e) {
            throw new ObjenesisException(e);
        }
    }
}
