package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgol.class */
public final class zzgol extends zzgkl<zzgol, zzgoi> implements zzglw {
    private static final zzgol zzb;
    private int zze;
    private zzgok zzf;
    private zzgjf zzh;
    private zzgjf zzi;
    private int zzj;
    private zzgjf zzk;
    private byte zzl = (byte) 2;
    private zzgku<zzgod> zzg = zzgkl.zzaE();

    static {
        zzgol zzgolVar = new zzgol();
        zzb = zzgolVar;
        zzgkl.zzaK(zzgol.class, zzgolVar);
    }

    private zzgol() {
        zzgjf zzgjfVar = zzgjf.zzb;
        this.zzh = zzgjfVar;
        this.zzi = zzgjfVar;
        this.zzk = zzgjfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zze", "zzf", "zzg", zzgod.class, "zzh", "zzi", "zzj", "zzk"});
            }
            if (i2 == 3) {
                return new zzgol();
            }
            if (i2 == 4) {
                return new zzgoi(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            if (obj == null) {
                i3 = 0;
            }
            this.zzl = (byte) i3;
            return null;
        }
        return Byte.valueOf(this.zzl);
    }
}
