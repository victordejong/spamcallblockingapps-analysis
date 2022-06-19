package com.google.firebase.components;

import java.util.Objects;
/* renamed from: com.google.firebase.components.y */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/y.class */
public final class C8889y {
    /* renamed from: a */
    public static void m2421a(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: b */
    public static <T> T m2420b(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: c */
    public static <T> T m2419c(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: d */
    public static void m2418d(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalStateException(str);
    }
}
