package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbk.class */
public final class zzbbk extends zzgkl<zzbbk, zzbbj> implements zzglw {
    private static final zzbbk zzb;
    private int zze;
    private int zzf;
    private zzbbo zzg;
    private zzbbq zzh;

    static {
        zzbbk zzbbkVar = new zzbbk();
        zzb = zzbbkVar;
        zzgkl.zzaK(zzbbk.class, zzbbkVar);
    }

    private zzbbk() {
    }

    public static zzbbj zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzbbk zzbbkVar, zzbbo zzbboVar) {
        Objects.requireNonNull(zzbboVar);
        zzbbkVar.zzg = zzbboVar;
        zzbbkVar.zze |= 2;
    }

    public static /* synthetic */ void zze(zzbbk zzbbkVar, zzbbq zzbbqVar) {
        Objects.requireNonNull(zzbbqVar);
        zzbbkVar.zzh = zzbbqVar;
        zzbbkVar.zze |= 4;
    }

    public static /* synthetic */ void zzf(zzbbk zzbbkVar, int i) {
        zzbbkVar.zzf = 1;
        zzbbkVar.zze = 1 | zzbbkVar.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zze", "zzf", zzbbm.zza, "zzg", "zzh"});
            } else if (i2 == 3) {
                return new zzbbk();
            } else {
                if (i2 == 4) {
                    return new zzbbj(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
