package com.google.android.gms.internal.vision;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzin.class */
public final class zzin {
    private static final zzin zzzn = new zzin();
    private final ConcurrentMap<Class<?>, zzir<?>> zzzp = new ConcurrentHashMap();
    private final zziu zzzo = new zzhp();

    private zzin() {
    }

    public static zzin zzho() {
        return zzzn;
    }

    public final <T> zzir<T> zzf(Class<T> cls) {
        zzgt.zza(cls, "messageType");
        zzir<?> zzirVar = this.zzzp.get(cls);
        zzir<?> zzirVar2 = zzirVar;
        if (zzirVar == null) {
            zzirVar2 = this.zzzo.zze(cls);
            zzgt.zza(cls, "messageType");
            zzgt.zza(zzirVar2, "schema");
            zzir<?> putIfAbsent = this.zzzp.putIfAbsent(cls, zzirVar2);
            if (putIfAbsent != null) {
                zzirVar2 = putIfAbsent;
            }
        }
        return (zzir<T>) zzirVar2;
    }

    public final <T> zzir<T> zzu(T t) {
        return zzf(t.getClass());
    }
}
