package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxx.class */
public final class zzxx extends zzgga<zzxx, zzxw> implements zzghj {
    private static final zzxx zzg;
    private int zzb;
    private String zze = "";
    private String zzf = "";

    static {
        zzxx zzxxVar = new zzxx();
        zzg = zzxxVar;
        zzgga.zzay(zzxx.class, zzxxVar);
    }

    private zzxx() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzxx();
            }
            if (i2 == 4) {
                return new zzxw(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
