package com.google.android.datatransport.p062h.p063u.p064a;
/* renamed from: com.google.android.datatransport.h.u.a.d */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/u/a/d.class */
public final class C1309d {
    /* renamed from: a */
    public static <T> void m9195a(T t, Class<T> cls) {
        if (t == null) {
            throw new IllegalStateException(cls.getCanonicalName() + " must be set");
        }
    }

    /* renamed from: b */
    public static <T> T m9194b(T t) {
        t.getClass();
        return t;
    }

    /* renamed from: c */
    public static <T> T m9193c(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }
}
