package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgjp.class */
public final class zzgjp extends zzgga<zzgjp, zzgjo> implements zzghj {
    private static final zzgjp zzh;
    private int zzb;
    private zzgex zze;
    private zzgex zzf;
    private zzgex zzg;

    static {
        zzgjp zzgjpVar = new zzgjp();
        zzh = zzgjpVar;
        zzgga.zzay(zzgjp.class, zzgjpVar);
    }

    private zzgjp() {
        zzgex zzgexVar = zzgex.zzb;
        this.zze = zzgexVar;
        this.zzf = zzgexVar;
        this.zzg = zzgexVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ည��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgjp();
            }
            if (i2 == 4) {
                return new zzgjo(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
