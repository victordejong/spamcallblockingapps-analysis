package com.google.gson.internal;

import java.lang.reflect.Type;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/Primitives.class */
public final class Primitives {
    private Primitives() {
    }

    public static boolean isPrimitive(Type type) {
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public static boolean isWrapperType(Type type) {
        return type == Integer.class || type == Float.class || type == Byte.class || type == Double.class || type == Long.class || type == Character.class || type == Boolean.class || type == Short.class || type == Void.class;
    }

    public static <T> Class<T> unwrap(Class<T> cls) {
        if (cls == Integer.class) {
            return Integer.TYPE;
        }
        if (cls == Float.class) {
            return Float.TYPE;
        }
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Double.class) {
            return Double.TYPE;
        }
        if (cls == Long.class) {
            return Long.TYPE;
        }
        if (cls == Character.class) {
            return Character.TYPE;
        }
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        if (cls == Short.class) {
            return Short.TYPE;
        }
        Class<T> cls2 = cls;
        if (cls == Void.class) {
            cls2 = Void.TYPE;
        }
        return cls2;
    }

    public static <T> Class<T> wrap(Class<T> cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        Class<T> cls2 = cls;
        if (cls == Void.TYPE) {
            cls2 = Void.class;
        }
        return cls2;
    }
}
