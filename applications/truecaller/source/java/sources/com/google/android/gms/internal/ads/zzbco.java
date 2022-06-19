package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbco.class */
public final class zzbco extends zzgga<zzbco, zzbcn> implements zzghj {
    private static final zzbco zzk;
    private int zzb;
    private int zze = 1000;
    private zzbcg zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private long zzj;

    static {
        zzbco zzbcoVar = new zzbco();
        zzk = zzbcoVar;
        zzgga.zzay(zzbco.class, zzbcoVar);
    }

    private zzbco() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzb", "zze", zzbam.zza, "zzf", "zzg", "zzh", "zzi", "zzj"});
            } else if (i2 == 3) {
                return new zzbco();
            } else {
                if (i2 == 4) {
                    return new zzbcn(null);
                }
                if (i2 == 5) {
                    return zzk;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
