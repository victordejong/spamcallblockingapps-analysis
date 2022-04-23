package com.google.gson.internal;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/j.class */
public final class j {
    private j() {
    }

    public static <T> Class<T> a(Class<T> cls) {
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
            cls2 = (Class<T>) Void.class;
        }
        return cls2;
    }
}
