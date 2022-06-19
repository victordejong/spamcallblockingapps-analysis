package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgz.class */
public final class zzgz {
    private static final zzgz zza = new zzgz();
    private final ConcurrentMap<Class<?>, zzhd<?>> zzc = new ConcurrentHashMap();
    private final zzhg zzb = new zzgb();

    private zzgz() {
    }

    public static zzgz zza() {
        return zza;
    }

    public final <T> zzhd<T> zza(Class<T> cls) {
        zzff.zza(cls, "messageType");
        zzhd<?> zzhdVar = this.zzc.get(cls);
        zzhd<?> zzhdVar2 = zzhdVar;
        if (zzhdVar == null) {
            zzhdVar2 = this.zzb.zza(cls);
            zzff.zza(cls, "messageType");
            zzff.zza(zzhdVar2, "schema");
            zzhd<?> putIfAbsent = this.zzc.putIfAbsent(cls, zzhdVar2);
            if (putIfAbsent != null) {
                zzhdVar2 = putIfAbsent;
            }
        }
        return (zzhd<T>) zzhdVar2;
    }

    public final <T> zzhd<T> zza(T t) {
        return zza((Class) t.getClass());
    }
}
