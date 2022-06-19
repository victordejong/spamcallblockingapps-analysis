package com.google.firebase.components;
/* renamed from: com.google.firebase.components.r */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/r.class */
public final class C4903r {
    /* renamed from: a */
    public static <T> T m2058a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    /* renamed from: a */
    public static <T> T m2057a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    /* renamed from: a */
    public static void m2056a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: b */
    public static void m2055b(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }
}
