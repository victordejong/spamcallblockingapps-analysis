package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdc.class */
public final class zzbdc extends zzgkl<zzbdc, zzbdb> implements zzglw {
    private static final zzbdc zzb;
    private int zze;
    private int zzf;
    private zzbdu zzg;

    static {
        zzbdc zzbdcVar = new zzbdc();
        zzb = zzbdcVar;
        zzgkl.zzaK(zzbdc.class, zzbdcVar);
    }

    private zzbdc() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zze", "zzf", zzbcj.zza, "zzg"});
            } else if (i2 == 3) {
                return new zzbdc();
            } else {
                if (i2 == 4) {
                    return new zzbdb(null);
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
