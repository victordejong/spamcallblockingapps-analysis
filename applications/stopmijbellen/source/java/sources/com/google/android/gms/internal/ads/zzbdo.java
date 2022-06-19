package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdo.class */
public final class zzbdo extends zzgkl<zzbdo, zzbdn> implements zzglw {
    private static final zzbdo zzb;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzbdo zzbdoVar = new zzbdo();
        zzb = zzbdoVar;
        zzgkl.zzaK(zzbdo.class, zzbdoVar);
    }

    private zzbdo() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzbdo();
            }
            if (i2 == 4) {
                return new zzbdn(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
