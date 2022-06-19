package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgo.class */
public final class zzgo extends zzkd<zzgo, zzgn> implements zzlj {
    private static final zzgo zzg;
    private int zza;
    private zzkk<zzgt> zze = zzkd.zzbE();
    private zzgk zzf;

    static {
        zzgo zzgoVar = new zzgo();
        zzg = zzgoVar;
        zzkd.zzby(zzgo.class, zzgoVar);
    }

    private zzgo() {
    }

    public final List<zzgt> zza() {
        return this.zze;
    }

    public final zzgk zzb() {
        zzgk zzgkVar = this.zzf;
        zzgk zzgkVar2 = zzgkVar;
        if (zzgkVar == null) {
            zzgkVar2 = zzgk.zzc();
        }
        return zzgkVar2;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\u001b\u0002ဉ��", new Object[]{"zza", "zze", zzgt.class, "zzf"});
            }
            if (i2 == 3) {
                return new zzgo();
            }
            if (i2 == 4) {
                return new zzgn(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
