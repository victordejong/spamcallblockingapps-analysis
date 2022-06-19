package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z73.class */
public final class z73 extends ie3<z73, y73> implements nf3 {
    private static final z73 zzg;
    private k83 zzb;
    private t73 zze;
    private int zzf;

    static {
        z73 z73Var = new z73();
        zzg = z73Var;
        ie3.m14414z(z73.class, z73Var);
    }

    private z73() {
    }

    /* renamed from: E */
    public static y73 m8493E() {
        return zzg.m14418v();
    }

    /* renamed from: F */
    public static z73 m8492F() {
        return zzg;
    }

    /* renamed from: H */
    public static /* synthetic */ void m8490H(z73 z73Var, k83 k83Var) {
        k83Var.getClass();
        z73Var.zzb = k83Var;
    }

    /* renamed from: I */
    public static /* synthetic */ void m8489I(z73 z73Var, t73 t73Var) {
        t73Var.getClass();
        z73Var.zze = t73Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\t\u0003\f", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new z73();
            }
            if (i2 == 4) {
                return new y73(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final k83 m8495C() {
        k83 k83Var = this.zzb;
        k83 k83Var2 = k83Var;
        if (k83Var == null) {
            k83Var2 = k83.m13961E();
        }
        return k83Var2;
    }

    /* renamed from: D */
    public final t73 m8494D() {
        t73 t73Var = this.zze;
        t73 t73Var2 = t73Var;
        if (t73Var == null) {
            t73Var2 = t73.m10791E();
        }
        return t73Var2;
    }

    /* renamed from: J */
    public final int m8488J() {
        int i = this.zzf;
        int i2 = 3;
        if (i == 0) {
            i2 = 2;
        } else if (i != 1) {
            i2 = i != 2 ? i != 3 ? 0 : 5 : 4;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
