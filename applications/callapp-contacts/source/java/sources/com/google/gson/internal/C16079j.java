package com.google.gson.internal;
/* renamed from: com.google.gson.internal.j */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/j.class */
public final class C16079j {
    private C16079j() {
    }

    /* renamed from: a */
    public static <T> Class<T> m7870a(Class<T> cls) {
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
