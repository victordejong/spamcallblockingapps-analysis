package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcg.class */
public final class zzbcg extends zzgga<zzbcg, zzbce> implements zzghj {
    private static final zzbcg zzf;
    private int zzb;
    private int zze;

    static {
        zzbcg zzbcgVar = new zzbcg();
        zzf = zzbcgVar;
        zzgga.zzay(zzbcg.class, zzbcgVar);
    }

    private zzbcg() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဌ��", new Object[]{"zzb", "zze", zzbcf.zza});
            } else if (i2 == 3) {
                return new zzbcg();
            } else {
                if (i2 == 4) {
                    return new zzbce(null);
                }
                if (i2 == 5) {
                    return zzf;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
