package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakc.class */
public final class zzakc extends zzgkl<zzakc, zzakb> implements zzglw {
    private static final zzakc zzb;
    private int zze;
    private zzgku<zzgjf> zzf = zzgkl.zzaE();
    private zzgjf zzg = zzgjf.zzb;
    private int zzh = 1;
    private int zzi = 1;

    static {
        zzakc zzakcVar = new zzakc();
        zzb = zzakcVar;
        zzgkl.zzaK(zzakc.class, zzakcVar);
    }

    private zzakc() {
    }

    public static zzakb zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzakc zzakcVar, zzgjf zzgjfVar) {
        zzgku<zzgjf> zzgkuVar = zzakcVar.zzf;
        if (!zzgkuVar.zzc()) {
            zzakcVar.zzf = zzgkl.zzaF(zzgkuVar);
        }
        zzakcVar.zzf.add(zzgjfVar);
    }

    public static /* synthetic */ void zze(zzakc zzakcVar, zzgjf zzgjfVar) {
        zzakcVar.zze |= 1;
        zzakcVar.zzg = zzgjfVar;
    }

    public static /* synthetic */ void zzf(zzakc zzakcVar, int i) {
        zzakcVar.zzi = i - 1;
        zzakcVar.zze |= 4;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001c\u0002ည��\u0003ဌ\u0001\u0004ဌ\u0002", new Object[]{"zze", "zzf", "zzg", "zzh", zzajw.zza, "zzi", zzaju.zza});
            } else if (i2 == 3) {
                return new zzakc();
            } else {
                if (i2 == 4) {
                    return new zzakb(null);
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
