package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzgh;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgd.class */
public final class zzgd {
    private static final com.google.android.gms.internal.firebase-perf.zzgd zzti = new zzgd();
    private final ConcurrentMap<Class<?>, zzge<?>> zztk = new ConcurrentHashMap();
    private final zzgh zztj = new zzfe();

    private zzgd() {
    }

    public static com.google.android.gms.internal.firebase-perf.zzgd zzhr() {
        return zzti;
    }

    public final <T> zzge<T> zze(Class<T> cls) {
        zzei.zza(cls, "messageType");
        zzge<?> zzgeVar = this.zztk.get(cls);
        zzge<?> zzgeVar2 = zzgeVar;
        if (zzgeVar == null) {
            zzgeVar2 = this.zztj.zzd(cls);
            zzei.zza(cls, "messageType");
            zzei.zza(zzgeVar2, "schema");
            zzge<?> putIfAbsent = this.zztk.putIfAbsent(cls, zzgeVar2);
            if (putIfAbsent != null) {
                zzgeVar2 = putIfAbsent;
            }
        }
        return zzgeVar2;
    }

    public final <T> zzge<T> zzm(T t) {
        return zze(t.getClass());
    }
}
