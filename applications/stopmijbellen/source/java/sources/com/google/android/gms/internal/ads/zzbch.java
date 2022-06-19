package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbch.class */
public final class zzbch extends zzgkl<zzbch, zzbcf> implements zzglw {
    private static final zzbch zzb;
    private int zze;
    private int zzf;
    private zzbdw zzg;
    private String zzh = "";
    private String zzi = "";

    static {
        zzbch zzbchVar = new zzbch();
        zzb = zzbchVar;
        zzgkl.zzaK(zzbch.class, zzbchVar);
    }

    private zzbch() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0004��\u0001\u0005\b\u0004������\u0005ဌ��\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zze", "zzf", zzbcg.zza, "zzg", "zzh", "zzi"});
            } else if (i2 == 3) {
                return new zzbch();
            } else {
                if (i2 == 4) {
                    return new zzbcf(null);
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
