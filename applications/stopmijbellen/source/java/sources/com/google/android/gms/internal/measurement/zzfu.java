package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfu.class */
public final class zzfu extends zzkd<zzfu, zzft> implements zzlj {
    private static final zzfu zze;
    private zzkk<zzfw> zza = zzkd.zzbE();

    static {
        zzfu zzfuVar = new zzfu();
        zze = zzfuVar;
        zzkd.zzby(zzfu.class, zzfuVar);
    }

    private zzfu() {
    }

    public static zzft zzc() {
        return zze.zzbt();
    }

    public static /* synthetic */ void zze(zzfu zzfuVar, zzfw zzfwVar) {
        Objects.requireNonNull(zzfwVar);
        zzkk<zzfw> zzkkVar = zzfuVar.zza;
        if (!zzkkVar.zza()) {
            zzfuVar.zza = zzkd.zzbF(zzkkVar);
        }
        zzfuVar.zza.add(zzfwVar);
    }

    public final List<zzfw> zza() {
        return this.zza;
    }

    public final zzfw zzb(int i) {
        return this.zza.get(0);
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zza", zzfw.class});
            }
            if (i2 == 3) {
                return new zzfu();
            }
            if (i2 == 4) {
                return new zzft(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
