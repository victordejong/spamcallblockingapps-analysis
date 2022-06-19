package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbx.class */
public final class zzbbx extends zzgga<zzbbx, zzbbw> implements zzghj {
    private static final zzbbx zzg;
    private int zzb;
    private int zze;
    private int zzf;

    static {
        zzbbx zzbbxVar = new zzbbx();
        zzg = zzbbxVar;
        zzgga.zzay(zzbbx.class, zzbbxVar);
    }

    private zzbbx() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzbbx();
            }
            if (i2 == 4) {
                return new zzbbw(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
