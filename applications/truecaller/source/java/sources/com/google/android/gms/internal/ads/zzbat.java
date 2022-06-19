package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbat.class */
public final class zzbat extends zzgga<zzbat, zzbas> implements zzghj {
    private static final zzbat zzg;
    private int zzb;
    private int zze;
    private zzggf zzf = zzgga.zzaB();

    static {
        zzbat zzbatVar = new zzbat();
        zzg = zzbatVar;
        zzgga.zzay(zzbat.class, zzbatVar);
    }

    private zzbat() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u0016", new Object[]{"zzb", "zze", zzbam.zza, "zzf"});
            } else if (i2 == 3) {
                return new zzbat();
            } else {
                if (i2 == 4) {
                    return new zzbas(null);
                }
                if (i2 == 5) {
                    return zzg;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
