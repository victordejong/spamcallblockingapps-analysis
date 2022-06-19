package com.google.android.gms.internal.firebase_remote_config;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjb.class */
public final class zzjb {
    private static final zzjb zzwk = new zzjb();
    private final ConcurrentMap<Class<?>, zzjf<?>> zzwm = new ConcurrentHashMap();
    private final zzji zzwl = new zzid();

    private zzjb() {
    }

    public static zzjb zzii() {
        return zzwk;
    }

    public final <T> zzjf<T> zzk(Class<T> cls) {
        zzhm.zza(cls, "messageType");
        zzjf<?> zzjfVar = this.zzwm.get(cls);
        zzjf<?> zzjfVar2 = zzjfVar;
        if (zzjfVar == null) {
            zzjfVar2 = this.zzwl.zzj(cls);
            zzhm.zza(cls, "messageType");
            zzhm.zza(zzjfVar2, "schema");
            zzjf<?> putIfAbsent = this.zzwm.putIfAbsent(cls, zzjfVar2);
            if (putIfAbsent != null) {
                zzjfVar2 = putIfAbsent;
            }
        }
        return (zzjf<T>) zzjfVar2;
    }

    public final <T> zzjf<T> zzz(T t) {
        return zzk(t.getClass());
    }
}
