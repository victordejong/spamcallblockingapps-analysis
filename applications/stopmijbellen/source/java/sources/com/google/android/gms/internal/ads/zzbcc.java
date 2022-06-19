package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcc.class */
public final class zzbcc extends zzgkl<zzbcc, zzbcb> implements zzglw {
    private static final zzbcc zzb;
    private int zze;
    private int zzf;
    private zzbdu zzg;
    private zzbdu zzh;
    private zzbdu zzi;
    private zzgku<zzbdu> zzj = zzgkl.zzaE();
    private int zzk;

    static {
        zzbcc zzbccVar = new zzbcc();
        zzb = zzbccVar;
        zzgkl.zzaK(zzbcc.class, zzbccVar);
    }

    private zzbcc() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", zzbdu.class, "zzk"});
            }
            if (i2 == 3) {
                return new zzbcc();
            }
            if (i2 == 4) {
                return new zzbcb(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
