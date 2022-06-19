package com.google.android.gms.internal.mlkit_common;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzhm.class */
public final class zzhm {
    private static final zzhm zza = new zzhm();
    private final ConcurrentMap<Class<?>, zzhr<?>> zzc = new ConcurrentHashMap();
    private final zzhq zzb = new zzgo();

    private zzhm() {
    }

    public static zzhm zza() {
        return zza;
    }

    public final <T> zzhr<T> zza(Class<T> cls) {
        zzfs.zza(cls, "messageType");
        zzhr<?> zzhrVar = this.zzc.get(cls);
        zzhr<?> zzhrVar2 = zzhrVar;
        if (zzhrVar == null) {
            zzhrVar2 = this.zzb.zza(cls);
            zzfs.zza(cls, "messageType");
            zzfs.zza(zzhrVar2, "schema");
            zzhr<?> putIfAbsent = this.zzc.putIfAbsent(cls, zzhrVar2);
            if (putIfAbsent != null) {
                zzhrVar2 = putIfAbsent;
            }
        }
        return (zzhr<T>) zzhrVar2;
    }

    public final <T> zzhr<T> zza(T t) {
        return zza((Class) t.getClass());
    }
}
