package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbea.class */
public final class zzbea extends zzgkl<zzbea, zzbdz> implements zzglw {
    private static final zzbea zzb;
    private int zze;
    private int zzf = 1000;
    private zzbed zzg;
    private zzbdu zzh;

    static {
        zzbea zzbeaVar = new zzbea();
        zzb = zzbeaVar;
        zzgkl.zzaK(zzbea.class, zzbeaVar);
    }

    private zzbea() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zze", "zzf", zzbcj.zza, "zzg", "zzh"});
            } else if (i2 == 3) {
                return new zzbea();
            } else {
                if (i2 == 4) {
                    return new zzbdz(null);
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
