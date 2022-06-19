package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbv.class */
public final class zzbbv extends zzgga<zzbbv, zzbbu> implements zzghj {
    private static final zzbbv zzh;
    private int zzb;
    private String zze = "";
    private int zzf;
    private zzbbx zzg;

    static {
        zzbbv zzbbvVar = new zzbbv();
        zzh = zzbbvVar;
        zzgga.zzay(zzbbv.class, zzbbvVar);
    }

    private zzbbv() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဌ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zze", "zzf", zzbam.zza, "zzg"});
            } else if (i2 == 3) {
                return new zzbbv();
            } else {
                if (i2 == 4) {
                    return new zzbbu(null);
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
