package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w73.class */
public final class w73 extends ie3<w73, v73> implements nf3 {
    private static final w73 zze;
    private z73 zzb;

    static {
        w73 w73Var = new w73();
        zze = w73Var;
        ie3.m14414z(w73.class, w73Var);
    }

    private w73() {
    }

    /* renamed from: D */
    public static w73 m9773D(zzgex zzgexVar, vd3 vd3Var) {
        return (w73) ie3.m14421s(zze, zzgexVar, vd3Var);
    }

    /* renamed from: E */
    public static v73 m9772E() {
        return zze.m14418v();
    }

    /* renamed from: G */
    public static /* synthetic */ void m9770G(w73 w73Var, z73 z73Var) {
        z73Var.getClass();
        w73Var.zzb = z73Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zze, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"zzb"});
            }
            if (i2 == 3) {
                return new w73();
            }
            if (i2 == 4) {
                return new v73(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final z73 m9774C() {
        z73 z73Var = this.zzb;
        z73 z73Var2 = z73Var;
        if (z73Var == null) {
            z73Var2 = z73.m8492F();
        }
        return z73Var2;
    }
}
