package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzben.class */
public final class zzben extends zzgkl<zzben, zzbem> implements zzglw {
    private static final zzben zzb;
    private int zze;
    private int zzf = 1000;
    private zzbed zzg;
    private zzbdu zzh;

    static {
        zzben zzbenVar = new zzben();
        zzb = zzbenVar;
        zzgkl.zzaK(zzben.class, zzbenVar);
    }

    private zzben() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zze", "zzf", zzbcj.zza, "zzg", "zzh"});
            } else if (i2 == 3) {
                return new zzben();
            } else {
                if (i2 == 4) {
                    return new zzbem(null);
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
