package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbav.class */
public final class zzbav extends zzgga<zzbav, zzbau> implements zzghj {
    private static final zzbav zzi;
    private int zzb;
    private zzbar zze;
    private zzggj<zzbbv> zzf = zzgga.zzaE();
    private int zzg;
    private zzbbx zzh;

    static {
        zzbav zzbavVar = new zzbav();
        zzi = zzbavVar;
        zzgga.zzay(zzbav.class, zzbavVar);
    }

    private zzbav() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဉ��\u0002\u001b\u0003ဌ\u0001\u0004ဉ\u0002", new Object[]{"zzb", "zze", "zzf", zzbbv.class, "zzg", zzbam.zza, "zzh"});
            } else if (i2 == 3) {
                return new zzbav();
            } else {
                if (i2 == 4) {
                    return new zzbau(null);
                }
                if (i2 == 5) {
                    return zzi;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
