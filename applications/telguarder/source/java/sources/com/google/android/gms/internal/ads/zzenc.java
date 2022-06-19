package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenc.class */
public final class zzenc {
    private static final zzenc zzito = new zzenc();
    private final ConcurrentMap<Class<?>, zzenj<?>> zzitq = new ConcurrentHashMap();
    private final zzenm zzitp = new zzemb();

    private zzenc() {
    }

    public static zzenc zzbkf() {
        return zzito;
    }

    public final <T> zzenj<T> zzax(T t) {
        return zzh(t.getClass());
    }

    public final <T> zzenj<T> zzh(Class<T> cls) {
        zzeld.zza(cls, "messageType");
        zzenj<?> zzenjVar = this.zzitq.get(cls);
        zzenj<?> zzenjVar2 = zzenjVar;
        if (zzenjVar == null) {
            zzenjVar2 = this.zzitp.zzg(cls);
            zzeld.zza(cls, "messageType");
            zzeld.zza(zzenjVar2, "schema");
            zzenj<?> putIfAbsent = this.zzitq.putIfAbsent(cls, zzenjVar2);
            if (putIfAbsent != null) {
                zzenjVar2 = putIfAbsent;
            }
        }
        return (zzenj<T>) zzenjVar2;
    }
}
