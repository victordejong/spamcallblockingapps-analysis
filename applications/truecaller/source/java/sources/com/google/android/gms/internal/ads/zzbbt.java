package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbt.class */
public final class zzbbt extends zzgga<zzbbt, zzbbs> implements zzghj {
    private static final zzbbt zzg;
    private int zzb;
    private int zze;
    private int zzf;

    static {
        zzbbt zzbbtVar = new zzbbt();
        zzg = zzbbtVar;
        zzgga.zzay(zzbbt.class, zzbbtVar);
    }

    private zzbbt() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzbbt();
            }
            if (i2 == 4) {
                return new zzbbs(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
