package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a63.class */
public final class a63 extends ie3<a63, z53> implements nf3 {
    private static final a63 zzg;
    private int zzb;
    private g63 zze;
    private zzgex zzf = zzgex.f34110d;

    static {
        a63 a63Var = new a63();
        zzg = a63Var;
        ie3.m14414z(a63.class, a63Var);
    }

    private a63() {
    }

    /* renamed from: F */
    public static a63 m16686F(zzgex zzgexVar, vd3 vd3Var) {
        return (a63) ie3.m14421s(zzg, zzgexVar, vd3Var);
    }

    /* renamed from: G */
    public static z53 m16685G() {
        return zzg.m14418v();
    }

    /* renamed from: H */
    public static a63 m16684H() {
        return zzg;
    }

    /* renamed from: L */
    public static /* synthetic */ void m16681L(a63 a63Var, g63 g63Var) {
        g63Var.getClass();
        a63Var.zze = g63Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new a63();
            }
            if (i2 == 4) {
                return new z53(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m16689C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final g63 m16688D() {
        g63 g63Var = this.zze;
        g63 g63Var2 = g63Var;
        if (g63Var == null) {
            g63Var2 = g63.m14977E();
        }
        return g63Var2;
    }

    /* renamed from: E */
    public final zzgex m16687E() {
        return this.zzf;
    }
}
