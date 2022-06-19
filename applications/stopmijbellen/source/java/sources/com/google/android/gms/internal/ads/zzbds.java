package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbds.class */
public final class zzbds extends zzgkl<zzbds, zzbdr> implements zzglw {
    private static final zzbds zzb;
    private int zze;
    private String zzf = "";
    private int zzg;
    private zzbdu zzh;

    static {
        zzbds zzbdsVar = new zzbds();
        zzb = zzbdsVar;
        zzgkl.zzaK(zzbds.class, zzbdsVar);
    }

    private zzbds() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဌ\u0001\u0003ဉ\u0002", new Object[]{"zze", "zzf", "zzg", zzbcj.zza, "zzh"});
            } else if (i2 == 3) {
                return new zzbds();
            } else {
                if (i2 == 4) {
                    return new zzbdr(null);
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
