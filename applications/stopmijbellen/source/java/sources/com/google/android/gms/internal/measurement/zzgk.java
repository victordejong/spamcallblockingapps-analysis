package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgk.class */
public final class zzgk extends zzkd<zzgk, zzgj> implements zzlj {
    private static final zzgk zze;
    private zzkk<zzgm> zza = zzkd.zzbE();

    static {
        zzgk zzgkVar = new zzgk();
        zze = zzgkVar;
        zzkd.zzby(zzgk.class, zzgkVar);
    }

    private zzgk() {
    }

    public static zzgk zzc() {
        return zze;
    }

    public final List<zzgm> zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zza", zzgm.class});
            }
            if (i2 == 3) {
                return new zzgk();
            }
            if (i2 == 4) {
                return new zzgj(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
