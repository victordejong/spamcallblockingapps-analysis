package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgm.class */
public final class zzgm extends zzkd<zzgm, zzgl> implements zzlj {
    private static final zzgm zzg;
    private int zza;
    private String zze = "";
    private zzkk<zzgt> zzf = zzkd.zzbE();

    static {
        zzgm zzgmVar = new zzgm();
        zzg = zzgmVar;
        zzkd.zzby(zzgm.class, zzgmVar);
    }

    private zzgm() {
    }

    public final String zza() {
        return this.zze;
    }

    public final List<zzgt> zzb() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဈ��\u0002\u001b", new Object[]{"zza", "zze", "zzf", zzgt.class});
            }
            if (i2 == 3) {
                return new zzgm();
            }
            if (i2 == 4) {
                return new zzgl(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
