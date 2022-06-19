package com.google.android.datatransport.p232h.p233u.p234a;

import java.util.Objects;
/* renamed from: com.google.android.datatransport.h.u.a.d */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/u/a/d.class */
public final class C4686d {
    /* renamed from: a */
    public static <T> void m21996a(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    /* renamed from: b */
    public static <T> T m21995b(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: c */
    public static <T> T m21994c(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }
}
