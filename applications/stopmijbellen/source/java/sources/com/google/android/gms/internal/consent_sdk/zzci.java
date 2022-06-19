package com.google.android.gms.internal.consent_sdk;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzci.class */
public final class zzci<T> implements zzch<T> {
    private static final zzci<Object> zza = new zzci<>(null);
    private final T zzb;

    private zzci(T t) {
        this.zzb = t;
    }

    public static <T> zzch<T> zza(T t) {
        Objects.requireNonNull(t, "instance cannot be null");
        return new zzci(t);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzcl
    public final T zzb() {
        return this.zzb;
    }
}
