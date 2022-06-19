package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbby.class */
public final class zzbby extends zzgkl<zzbby, zzbbx> implements zzglw {
    private static final zzbby zzb;
    private int zze;
    private String zzf = "";
    private zzgku<zzbbw> zzg = zzgkl.zzaE();
    private int zzh;

    static {
        zzbby zzbbyVar = new zzbby();
        zzb = zzbbyVar;
        zzgkl.zzaK(zzbby.class, zzbbyVar);
    }

    private zzbby() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001", new Object[]{"zze", "zzf", "zzg", zzbbw.class, "zzh", zzbcj.zza});
            } else if (i2 == 3) {
                return new zzbby();
            } else {
                if (i2 == 4) {
                    return new zzbbx(null);
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
