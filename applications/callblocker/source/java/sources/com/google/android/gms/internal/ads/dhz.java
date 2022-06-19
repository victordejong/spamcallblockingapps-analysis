package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhz.class */
public final class dhz {
    /* renamed from: a */
    public static <T> T m9440a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    /* renamed from: a */
    public static <T> T m9438a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    /* renamed from: a */
    public static <T> void m9439a(T t, Class<T> cls) {
        if (t == null) {
            throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
        }
    }
}
