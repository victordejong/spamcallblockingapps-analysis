package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjf.class */
public final class zzjf {
    private static final zzjf zza = new zzjf();
    private final ConcurrentMap<Class<?>, zzji<?>> zzc = new ConcurrentHashMap();
    private final zzjj zzb = new zzip();

    private zzjf() {
    }

    public static zzjf zza() {
        return zza;
    }

    public final <T> zzji<T> zzb(Class<T> cls) {
        zzia.zzb(cls, "messageType");
        zzji<?> zzjiVar = this.zzc.get(cls);
        zzji<?> zzjiVar2 = zzjiVar;
        if (zzjiVar == null) {
            zzjiVar2 = this.zzb.zza(cls);
            zzia.zzb(cls, "messageType");
            zzia.zzb(zzjiVar2, "schema");
            zzji<T> zzjiVar3 = (zzji<T>) this.zzc.putIfAbsent(cls, zzjiVar2);
            if (zzjiVar3 != null) {
                return zzjiVar3;
            }
        }
        return (zzji<T>) zzjiVar2;
    }
}
