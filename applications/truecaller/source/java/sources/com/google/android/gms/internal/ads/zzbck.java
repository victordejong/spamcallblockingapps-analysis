package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbck.class */
public final class zzbck extends zzgga<zzbck, zzbcj> implements zzghj {
    private static final zzbck zzj;
    private int zzb;
    private int zze = 1000;
    private zzbcg zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    static {
        zzbck zzbckVar = new zzbck();
        zzj = zzbckVar;
        zzgga.zzay(zzbck.class, zzbckVar);
    }

    private zzbck() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzb", "zze", zzbam.zza, "zzf", "zzg", "zzh", "zzi"});
            } else if (i2 == 3) {
                return new zzbck();
            } else {
                if (i2 == 4) {
                    return new zzbcj(null);
                }
                if (i2 == 5) {
                    return zzj;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
