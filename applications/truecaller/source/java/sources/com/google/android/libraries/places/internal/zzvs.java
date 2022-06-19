package com.google.android.libraries.places.internal;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzvs.class */
public final class zzvs {
    public static <T> T zza(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static <T> T zza(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static <T> void zza(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
    }
}
