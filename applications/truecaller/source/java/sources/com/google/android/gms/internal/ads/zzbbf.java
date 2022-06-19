package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbf.class */
public final class zzbbf extends zzgga<zzbbf, zzbbe> implements zzghj {
    private static final zzbbf zzg;
    private int zzb;
    private int zze;
    private zzbbx zzf;

    static {
        zzbbf zzbbfVar = new zzbbf();
        zzg = zzbbfVar;
        zzgga.zzay(zzbbf.class, zzbbfVar);
    }

    private zzbbf() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzb", "zze", zzbam.zza, "zzf"});
            } else if (i2 == 3) {
                return new zzbbf();
            } else {
                if (i2 == 4) {
                    return new zzbbe(null);
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
