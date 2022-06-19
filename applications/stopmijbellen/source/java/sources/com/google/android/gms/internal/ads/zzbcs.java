package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcs.class */
public final class zzbcs extends zzgkl<zzbcs, zzbcr> implements zzglw {
    private static final zzbcs zzb;
    private int zze;
    private zzbco zzf;
    private zzgku<zzbds> zzg = zzgkl.zzaE();
    private int zzh;
    private zzbdu zzi;

    static {
        zzbcs zzbcsVar = new zzbcs();
        zzb = zzbcsVar;
        zzgkl.zzaK(zzbcs.class, zzbcsVar);
    }

    private zzbcs() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဉ��\u0002\u001b\u0003ဌ\u0001\u0004ဉ\u0002", new Object[]{"zze", "zzf", "zzg", zzbds.class, "zzh", zzbcj.zza, "zzi"});
            } else if (i2 == 3) {
                return new zzbcs();
            } else {
                if (i2 == 4) {
                    return new zzbcr(null);
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
