package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcq.class */
public final class zzbcq extends zzgkl<zzbcq, zzbcp> implements zzglw {
    private static final zzbcq zzb;
    private int zze;
    private int zzf;
    private zzgkq zzg = zzgkl.zzaB();

    static {
        zzbcq zzbcqVar = new zzbcq();
        zzb = zzbcqVar;
        zzgkl.zzaK(zzbcq.class, zzbcqVar);
    }

    private zzbcq() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u0016", new Object[]{"zze", "zzf", zzbcj.zza, "zzg"});
            } else if (i2 == 3) {
                return new zzbcq();
            } else {
                if (i2 == 4) {
                    return new zzbcp(null);
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
