package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaka.class */
public final class zzaka extends zzgkl<zzaka, zzajz> implements zzglw {
    private static final zzaka zzb;
    private int zze;
    private String zzf = "";

    static {
        zzaka zzakaVar = new zzaka();
        zzb = zzakaVar;
        zzgkl.zzaK(zzaka.class, zzakaVar);
    }

    private zzaka() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzaka();
            }
            if (i2 == 4) {
                return new zzajz(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
