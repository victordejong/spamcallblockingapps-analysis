package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgmd.class */
public final class zzgmd {
    private static final zzgmd zza = new zzgmd();
    private final ConcurrentMap<Class<?>, zzgmo<?>> zzc = new ConcurrentHashMap();
    private final zzgmp zzb = new zzgln();

    private zzgmd() {
    }

    public static zzgmd zza() {
        return zza;
    }

    public final <T> zzgmo<T> zzb(Class<T> cls) {
        zzgkv.zzf(cls, "messageType");
        zzgmo<?> zzgmoVar = this.zzc.get(cls);
        zzgmo<?> zzgmoVar2 = zzgmoVar;
        if (zzgmoVar == null) {
            zzgmoVar2 = this.zzb.zza(cls);
            zzgkv.zzf(cls, "messageType");
            zzgkv.zzf(zzgmoVar2, "schema");
            zzgmo<T> zzgmoVar3 = (zzgmo<T>) this.zzc.putIfAbsent(cls, zzgmoVar2);
            if (zzgmoVar3 != null) {
                return zzgmoVar3;
            }
        }
        return (zzgmo<T>) zzgmoVar2;
    }
}
