package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ph3.class */
public final class ph3 extends ie3<ph3, oh3> implements nf3 {
    private static final ph3 zzh;
    private int zzb;
    private zzgex zze;
    private zzgex zzf;
    private zzgex zzg;

    static {
        ph3 ph3Var = new ph3();
        zzh = ph3Var;
        ie3.m14414z(ph3.class, ph3Var);
    }

    private ph3() {
        zzgex zzgexVar = zzgex.f34110d;
        this.zze = zzgexVar;
        this.zzf = zzgexVar;
        this.zzg = zzgexVar;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ည��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new ph3();
            }
            if (i2 == 4) {
                return new oh3(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
