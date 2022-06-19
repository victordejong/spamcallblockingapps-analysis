package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzb.class */
public final class zzzb extends zzgga<zzzb, zzza> implements zzghj {
    private static final zzzb zzj;
    private int zzb;
    private long zze;
    private int zzf;
    private boolean zzg;
    private zzggf zzh = zzgga.zzaB();
    private long zzi;

    static {
        zzzb zzzbVar = new zzzb();
        zzj = zzzbVar;
        zzgga.zzay(zzzb.class, zzzbVar);
    }

    private zzzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဂ��\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new zzzb();
            }
            if (i2 == 4) {
                return new zzza(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }
}
