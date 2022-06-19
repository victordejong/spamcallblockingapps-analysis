package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlq.class */
public final class zzlq {
    private static final zzlq zza = new zzlq();
    private final ConcurrentMap<Class<?>, zzlt<?>> zzc = new ConcurrentHashMap();
    private final zzlu zzb = new zzla();

    private zzlq() {
    }

    public static zzlq zza() {
        return zza;
    }

    public final <T> zzlt<T> zzb(Class<T> cls) {
        zzkl.zzb(cls, "messageType");
        zzlt<?> zzltVar = this.zzc.get(cls);
        zzlt<?> zzltVar2 = zzltVar;
        if (zzltVar == null) {
            zzltVar2 = this.zzb.zza(cls);
            zzkl.zzb(cls, "messageType");
            zzkl.zzb(zzltVar2, "schema");
            zzlt<T> zzltVar3 = (zzlt<T>) this.zzc.putIfAbsent(cls, zzltVar2);
            if (zzltVar3 != null) {
                return zzltVar3;
            }
        }
        return (zzlt<T>) zzltVar2;
    }
}
