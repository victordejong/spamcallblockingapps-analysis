package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajk.class */
public final class zzajk extends zzgkl<zzajk, zzajj> implements zzglw {
    private static final zzajk zzb;
    private int zze;
    private long zzf = -1;
    private int zzg = 1000;

    static {
        zzajk zzajkVar = new zzajk();
        zzb = zzajkVar;
        zzgkl.zzaK(zzajk.class, zzajkVar);
    }

    private zzajk() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဂ��\u0002ဌ\u0001", new Object[]{"zze", "zzf", "zzg", zzajv.zza});
            } else if (i2 == 3) {
                return new zzajk();
            } else {
                if (i2 == 4) {
                    return new zzajj(null);
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
