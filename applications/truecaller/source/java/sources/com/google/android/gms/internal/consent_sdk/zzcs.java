package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzcs.class */
public final class zzcs<T> implements zzcp<T> {
    private static final zzcs<Object> zza = new zzcs<>(null);
    private final T zzb;

    private zzcs(T t) {
        this.zzb = t;
    }

    public static <T> zzcp<T> zza(T t) {
        return new zzcs(zzcu.zza(t, "instance cannot be null"));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final T zza() {
        return this.zzb;
    }
}
