package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbef.class */
public final class zzbef extends zzgkl<zzbef, zzbee> implements zzglw {
    private static final zzbef zzb;
    private int zze;
    private zzbdw zzf;
    private int zzg = 1000;
    private zzbed zzh;
    private zzbdu zzi;

    static {
        zzbef zzbefVar = new zzbef();
        zzb = zzbefVar;
        zzgkl.zzaK(zzbef.class, zzbefVar);
    }

    private zzbef() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဌ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zze", "zzf", "zzg", zzbcj.zza, "zzh", "zzi"});
            } else if (i2 == 3) {
                return new zzbef();
            } else {
                if (i2 == 4) {
                    return new zzbee(null);
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
