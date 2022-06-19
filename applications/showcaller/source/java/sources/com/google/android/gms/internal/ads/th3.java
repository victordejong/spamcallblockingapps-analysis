package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/th3.class */
public final class th3 extends ie3<th3, sh3> implements nf3 {
    private static final th3 zzh;
    private int zzb;
    private int zze;
    private zzgex zzf;
    private zzgex zzg;

    static {
        th3 th3Var = new th3();
        zzh = th3Var;
        ie3.m14414z(th3.class, th3Var);
    }

    private th3() {
        zzgex zzgexVar = zzgex.f34110d;
        this.zzf = zzgexVar;
        this.zzg = zzgexVar;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new th3();
            }
            if (i2 == 4) {
                return new sh3(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
