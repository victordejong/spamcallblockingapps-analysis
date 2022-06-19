package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgb.class */
public final class zzgb extends zzkd<zzgb, zzfx> implements zzlj {
    private static final zzgb zzg;
    private int zza;
    private int zze = 1;
    private zzkk<zzfq> zzf = zzkd.zzbE();

    static {
        zzgb zzgbVar = new zzgb();
        zzg = zzgbVar;
        zzkd.zzby(zzgb.class, zzgbVar);
    }

    private zzgb() {
    }

    public static zzfx zza() {
        return zzg.zzbt();
    }

    public static /* synthetic */ void zzc(zzgb zzgbVar, zzfq zzfqVar) {
        Objects.requireNonNull(zzfqVar);
        zzkk<zzfq> zzkkVar = zzgbVar.zzf;
        if (!zzkkVar.zza()) {
            zzgbVar.zzf = zzkd.zzbF(zzkkVar);
        }
        zzgbVar.zzf.add(zzfqVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u001b", new Object[]{"zza", "zze", zzga.zzb(), "zzf", zzfq.class});
            } else if (i2 == 3) {
                return new zzgb();
            } else {
                if (i2 == 4) {
                    return new zzfx(null);
                }
                if (i2 == 5) {
                    return zzg;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
