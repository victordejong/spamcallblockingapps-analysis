package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t73.class */
public final class t73 extends ie3<t73, s73> implements nf3 {
    private static final t73 zze;
    private d93 zzb;

    static {
        t73 t73Var = new t73();
        zze = t73Var;
        ie3.m14414z(t73.class, t73Var);
    }

    private t73() {
    }

    /* renamed from: D */
    public static s73 m10792D() {
        return zze.m14418v();
    }

    /* renamed from: E */
    public static t73 m10791E() {
        return zze;
    }

    /* renamed from: G */
    public static /* synthetic */ void m10789G(t73 t73Var, d93 d93Var) {
        d93Var.getClass();
        t73Var.zzb = d93Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zze, "��\u0001����\u0002\u0002\u0001������\u0002\t", new Object[]{"zzb"});
            }
            if (i2 == 3) {
                return new t73();
            }
            if (i2 == 4) {
                return new s73(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final d93 m10793C() {
        d93 d93Var = this.zzb;
        d93 d93Var2 = d93Var;
        if (d93Var == null) {
            d93Var2 = d93.m15857F();
        }
        return d93Var2;
    }
}
