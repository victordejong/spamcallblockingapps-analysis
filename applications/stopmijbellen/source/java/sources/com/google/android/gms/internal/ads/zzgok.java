package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgok.class */
public final class zzgok extends zzgkl<zzgok, zzgoj> implements zzglw {
    private static final zzgok zzb;
    private int zze;
    private int zzf;
    private zzgjf zzg;
    private zzgjf zzh;

    static {
        zzgok zzgokVar = new zzgok();
        zzb = zzgokVar;
        zzgkl.zzaK(zzgok.class, zzgokVar);
    }

    private zzgok() {
        zzgjf zzgjfVar = zzgjf.zzb;
        this.zzg = zzgjfVar;
        this.zzh = zzgjfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzgok();
            }
            if (i2 == 4) {
                return new zzgoj(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
