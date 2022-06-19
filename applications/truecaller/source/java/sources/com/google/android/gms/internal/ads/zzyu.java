package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyu.class */
public final class zzyu extends zzgga<zzyu, zzyt> implements zzghj {
    private static final zzyu zzg;
    private int zzb;
    private long zze = -1;
    private int zzf = 1000;

    static {
        zzyu zzyuVar = new zzyu();
        zzg = zzyuVar;
        zzgga.zzay(zzyu.class, zzyuVar);
    }

    private zzyu() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဂ��\u0002ဌ\u0001", new Object[]{"zzb", "zze", "zzf", zzzf.zza});
            } else if (i2 == 3) {
                return new zzyu();
            } else {
                if (i2 == 4) {
                    return new zzyt(null);
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
