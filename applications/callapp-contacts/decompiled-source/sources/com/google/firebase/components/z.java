package com.google.firebase.components;

import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/z.class */
public final class z {
    public static <T> T a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static <T> T a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static void a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void b(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }
}
