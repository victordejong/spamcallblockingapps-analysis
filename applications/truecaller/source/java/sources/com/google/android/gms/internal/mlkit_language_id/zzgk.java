package com.google.android.gms.internal.mlkit_language_id;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzgk.class */
public final class zzgk {
    private static final zzgk zza = new zzgk();
    private final ConcurrentMap<Class<?>, zzgp<?>> zzc = new ConcurrentHashMap();
    private final zzgo zzb = new zzfm();

    private zzgk() {
    }

    public static zzgk zza() {
        return zza;
    }

    public final <T> zzgp<T> zza(Class<T> cls) {
        zzeq.zza(cls, "messageType");
        zzgp<?> zzgpVar = this.zzc.get(cls);
        zzgp<?> zzgpVar2 = zzgpVar;
        if (zzgpVar == null) {
            zzgpVar2 = this.zzb.zza(cls);
            zzeq.zza(cls, "messageType");
            zzeq.zza(zzgpVar2, "schema");
            zzgp<?> putIfAbsent = this.zzc.putIfAbsent(cls, zzgpVar2);
            if (putIfAbsent != null) {
                zzgpVar2 = putIfAbsent;
            }
        }
        return (zzgp<T>) zzgpVar2;
    }

    public final <T> zzgp<T> zza(T t) {
        return zza((Class) t.getClass());
    }
}
