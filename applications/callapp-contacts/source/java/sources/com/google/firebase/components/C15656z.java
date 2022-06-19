package com.google.firebase.components;

import java.util.Objects;
/* renamed from: com.google.firebase.components.z */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/z.class */
public final class C15656z {
    /* renamed from: a */
    public static <T> T m8492a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: a */
    public static <T> T m8491a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: a */
    public static void m8490a(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: b */
    public static void m8489b(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalStateException(str);
    }
}
