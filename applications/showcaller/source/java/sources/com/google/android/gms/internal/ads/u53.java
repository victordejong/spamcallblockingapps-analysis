package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u53.class */
public final class u53 extends ie3<u53, t53> implements nf3 {
    private static final u53 zzg;
    private int zzb;
    private a63 zze;
    private r83 zzf;

    static {
        u53 u53Var = new u53();
        zzg = u53Var;
        ie3.m14414z(u53.class, u53Var);
    }

    private u53() {
    }

    /* renamed from: F */
    public static u53 m10403F(zzgex zzgexVar, vd3 vd3Var) {
        return (u53) ie3.m14421s(zzg, zzgexVar, vd3Var);
    }

    /* renamed from: G */
    public static t53 m10402G() {
        return zzg.m14418v();
    }

    /* renamed from: J */
    public static /* synthetic */ void m10399J(u53 u53Var, a63 a63Var) {
        a63Var.getClass();
        u53Var.zze = a63Var;
    }

    /* renamed from: L */
    public static /* synthetic */ void m10398L(u53 u53Var, r83 r83Var) {
        r83Var.getClass();
        u53Var.zzf = r83Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new u53();
            }
            if (i2 == 4) {
                return new t53(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m10406C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final a63 m10405D() {
        a63 a63Var = this.zze;
        a63 a63Var2 = a63Var;
        if (a63Var == null) {
            a63Var2 = a63.m16684H();
        }
        return a63Var2;
    }

    /* renamed from: E */
    public final r83 m10404E() {
        r83 r83Var = this.zzf;
        r83 r83Var2 = r83Var;
        if (r83Var == null) {
            r83Var2 = r83.m11662H();
        }
        return r83Var2;
    }
}
