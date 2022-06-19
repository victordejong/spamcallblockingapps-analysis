package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgjt.class */
public final class zzgjt extends zzgga<zzgjt, zzgjs> implements zzghj {
    private static final zzgjt zzh;
    private int zzb;
    private int zze;
    private zzgex zzf;
    private zzgex zzg;

    static {
        zzgjt zzgjtVar = new zzgjt();
        zzh = zzgjtVar;
        zzgga.zzay(zzgjt.class, zzgjtVar);
    }

    private zzgjt() {
        zzgex zzgexVar = zzgex.zzb;
        this.zzf = zzgexVar;
        this.zzg = zzgexVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgjt();
            }
            if (i2 == 4) {
                return new zzgjs(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
