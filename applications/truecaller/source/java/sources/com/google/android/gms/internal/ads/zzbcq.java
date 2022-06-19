package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcq.class */
public final class zzbcq extends zzgga<zzbcq, zzbcp> implements zzghj {
    private static final zzbcq zzh;
    private int zzb;
    private int zze = 1000;
    private zzbcg zzf;
    private zzbbx zzg;

    static {
        zzbcq zzbcqVar = new zzbcq();
        zzh = zzbcqVar;
        zzgga.zzay(zzbcq.class, zzbcqVar);
    }

    private zzbcq() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zze", zzbam.zza, "zzf", "zzg"});
            } else if (i2 == 3) {
                return new zzbcq();
            } else {
                if (i2 == 4) {
                    return new zzbcp(null);
                }
                if (i2 == 5) {
                    return zzh;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
