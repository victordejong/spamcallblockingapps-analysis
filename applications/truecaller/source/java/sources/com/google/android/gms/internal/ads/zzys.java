package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzys.class */
public final class zzys extends zzgga<zzys, zzyr> implements zzghj {
    private static final zzys zzg;
    private int zzb;
    private int zze;
    private long zzf = -1;

    static {
        zzys zzysVar = new zzys();
        zzg = zzysVar;
        zzgga.zzay(zzys.class, zzysVar);
    }

    private zzys() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဂ\u0001", new Object[]{"zzb", "zze", zzyo.zza, "zzf"});
            } else if (i2 == 3) {
                return new zzys();
            } else {
                if (i2 == 4) {
                    return new zzyr(null);
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
