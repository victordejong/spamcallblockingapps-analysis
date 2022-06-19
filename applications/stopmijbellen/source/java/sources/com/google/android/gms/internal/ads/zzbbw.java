package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbw.class */
public final class zzbbw extends zzgkl<zzbbw, zzbbv> implements zzglw {
    private static final zzbbw zzb;
    private int zze;
    private int zzf;
    private zzbdq zzg;

    static {
        zzbbw zzbbwVar = new zzbbw();
        zzb = zzbbwVar;
        zzgkl.zzaK(zzbbw.class, zzbbwVar);
    }

    private zzbbw() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zze", "zzf", zzbbu.zzc(), "zzg"});
            } else if (i2 == 3) {
                return new zzbbw();
            } else {
                if (i2 == 4) {
                    return new zzbbv(null);
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
