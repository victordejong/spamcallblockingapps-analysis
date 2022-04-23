package com.google.android.gms.internal.consent_sdk;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bv.class */
public final class bv {
    public static <T> T a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static <T> T a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static <T> void a(T t, Class<T> cls) {
        if (t == null) {
            throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
        }
    }
}
