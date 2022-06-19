package com.google.android.gms.internal.consent_sdk;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzcu.class */
public final class zzcu {
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
