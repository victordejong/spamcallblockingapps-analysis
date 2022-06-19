package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzym.class */
public final class zzym extends zzgga<zzym, zzyl> implements zzghj {
    private static final zzym zzf;
    private int zzb;
    private int zze;

    static {
        zzym zzymVar = new zzym();
        zzf = zzymVar;
        zzgga.zzay(zzym.class, zzymVar);
    }

    private zzym() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဌ��", new Object[]{"zzb", "zze", zzyq.zza});
            } else if (i2 == 3) {
                return new zzym();
            } else {
                if (i2 == 4) {
                    return new zzyl(null);
                }
                if (i2 == 5) {
                    return zzf;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
