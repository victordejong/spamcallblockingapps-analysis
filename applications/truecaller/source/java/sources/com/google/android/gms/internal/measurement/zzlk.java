package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzlk.class */
public final class zzlk {
    private static final zzlk zza = new zzlk();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzlo zzb = new zzku();

    private zzlk() {
    }

    public static zzlk zza() {
        return zza;
    }

    public final zzln zzb(Class cls) {
        zzkf.zzf(cls, "messageType");
        zzln zzlnVar = (zzln) this.zzc.get(cls);
        zzln zzlnVar2 = zzlnVar;
        if (zzlnVar == null) {
            zzlnVar2 = this.zzb.zza(cls);
            zzkf.zzf(cls, "messageType");
            zzkf.zzf(zzlnVar2, "schema");
            zzln zzlnVar3 = (zzln) this.zzc.putIfAbsent(cls, zzlnVar2);
            if (zzlnVar3 != null) {
                return zzlnVar3;
            }
        }
        return zzlnVar2;
    }
}
