package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgju.class */
public final class zzgju extends zzgga<zzgju, zzgjr> implements zzghj {
    private static final zzgju zzl;
    private int zzb;
    private zzgjt zze;
    private zzgex zzg;
    private zzgex zzh;
    private int zzi;
    private zzgex zzj;
    private byte zzk = (byte) 2;
    private zzggj<zzgjm> zzf = zzgga.zzaE();

    static {
        zzgju zzgjuVar = new zzgju();
        zzl = zzgjuVar;
        zzgga.zzay(zzgju.class, zzgjuVar);
    }

    private zzgju() {
        zzgex zzgexVar = zzgex.zzb;
        this.zzg = zzgexVar;
        this.zzh = zzgexVar;
        this.zzj = zzgexVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return zzgga.zzaz(zzl, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzb", "zze", "zzf", zzgjm.class, "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new zzgju();
            }
            if (i2 == 4) {
                return new zzgjr(null);
            }
            if (i2 == 5) {
                return zzl;
            }
            if (obj == null) {
                i3 = 0;
            }
            this.zzk = (byte) i3;
            return null;
        }
        return Byte.valueOf(this.zzk);
    }
}
