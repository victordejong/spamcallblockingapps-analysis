package com.google.android.gms.internal.mlkit_translate;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzlz.class */
public final class zzlz {
    private static final zzlz zza = new zzlz();
    private final ConcurrentMap<Class<?>, zzma<?>> zzc = new ConcurrentHashMap();
    private final zzmd zzb = new zzlb();

    private zzlz() {
    }

    public static zzlz zza() {
        return zza;
    }

    public final <T> zzma<T> zza(Class<T> cls) {
        zzkf.zza(cls, "messageType");
        zzma<?> zzmaVar = this.zzc.get(cls);
        zzma<?> zzmaVar2 = zzmaVar;
        if (zzmaVar == null) {
            zzmaVar2 = this.zzb.zza(cls);
            zzkf.zza(cls, "messageType");
            zzkf.zza(zzmaVar2, "schema");
            zzma<?> putIfAbsent = this.zzc.putIfAbsent(cls, zzmaVar2);
            if (putIfAbsent != null) {
                zzmaVar2 = putIfAbsent;
            }
        }
        return (zzma<T>) zzmaVar2;
    }

    public final <T> zzma<T> zza(T t) {
        return zza((Class) t.getClass());
    }
}
