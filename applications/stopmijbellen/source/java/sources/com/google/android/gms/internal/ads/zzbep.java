package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbep.class */
public final class zzbep extends zzgkl<zzbep, zzbeo> implements zzglw {
    private static final zzbep zzb;
    private int zze;
    private int zzf = 1000;
    private zzbed zzg;

    static {
        zzbep zzbepVar = new zzbep();
        zzb = zzbepVar;
        zzgkl.zzaK(zzbep.class, zzbepVar);
    }

    private zzbep() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zze", "zzf", zzbcj.zza, "zzg"});
            } else if (i2 == 3) {
                return new zzbep();
            } else {
                if (i2 == 4) {
                    return new zzbeo(null);
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
