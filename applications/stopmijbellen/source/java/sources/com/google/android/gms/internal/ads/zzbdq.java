package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdq.class */
public final class zzbdq extends zzgkl<zzbdq, zzbdp> implements zzglw {
    private static final zzbdq zzb;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzbdq zzbdqVar = new zzbdq();
        zzb = zzbdqVar;
        zzgkl.zzaK(zzbdq.class, zzbdqVar);
    }

    private zzbdq() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzbdq();
            }
            if (i2 == 4) {
                return new zzbdp(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
