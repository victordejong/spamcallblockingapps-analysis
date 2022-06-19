package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbci.class */
public final class zzbci extends zzgga<zzbci, zzbch> implements zzghj {
    private static final zzbci zzi;
    private int zzb;
    private zzbbz zze;
    private int zzf = 1000;
    private zzbcg zzg;
    private zzbbx zzh;

    static {
        zzbci zzbciVar = new zzbci();
        zzi = zzbciVar;
        zzgga.zzay(zzbci.class, zzbciVar);
    }

    private zzbci() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဌ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzb", "zze", "zzf", zzbam.zza, "zzg", "zzh"});
            } else if (i2 == 3) {
                return new zzbci();
            } else {
                if (i2 == 4) {
                    return new zzbch(null);
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
