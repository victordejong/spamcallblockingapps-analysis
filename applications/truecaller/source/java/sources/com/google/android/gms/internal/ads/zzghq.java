package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzghq.class */
public final class zzghq {
    private static final zzghq zza = new zzghq();
    private final ConcurrentMap<Class<?>, zzghz<?>> zzc = new ConcurrentHashMap();
    private final zzgia zzb = new zzgha();

    private zzghq() {
    }

    public static zzghq zza() {
        return zza;
    }

    public final <T> zzghz<T> zzb(Class<T> cls) {
        zzggk.zzb(cls, "messageType");
        zzghz<?> zzghzVar = this.zzc.get(cls);
        zzghz<?> zzghzVar2 = zzghzVar;
        if (zzghzVar == null) {
            zzghzVar2 = this.zzb.zza(cls);
            zzggk.zzb(cls, "messageType");
            zzggk.zzb(zzghzVar2, "schema");
            zzghz<T> zzghzVar3 = (zzghz<T>) this.zzc.putIfAbsent(cls, zzghzVar2);
            if (zzghzVar3 != null) {
                return zzghzVar3;
            }
        }
        return (zzghz<T>) zzghzVar2;
    }
}
