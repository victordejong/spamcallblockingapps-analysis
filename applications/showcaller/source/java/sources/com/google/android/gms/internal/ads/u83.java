package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u83.class */
public final class u83 extends ie3<u83, t83> implements nf3 {
    private static final u83 zzg;
    private x83 zzb;
    private int zze;
    private int zzf;

    static {
        u83 u83Var = new u83();
        zzg = u83Var;
        ie3.m14414z(u83.class, u83Var);
    }

    private u83() {
    }

    /* renamed from: E */
    public static u83 m10390E(zzgex zzgexVar, vd3 vd3Var) {
        return (u83) ie3.m14421s(zzg, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static t83 m10389F() {
        return zzg.m14418v();
    }

    /* renamed from: G */
    public static u83 m10388G() {
        return zzg;
    }

    /* renamed from: I */
    public static /* synthetic */ void m10386I(u83 u83Var, x83 x83Var) {
        x83Var.getClass();
        u83Var.zzb = x83Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new u83();
            }
            if (i2 == 4) {
                return new t83(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final x83 m10392C() {
        x83 x83Var = this.zzb;
        x83 x83Var2 = x83Var;
        if (x83Var == null) {
            x83Var2 = x83.m9325E();
        }
        return x83Var2;
    }

    /* renamed from: D */
    public final int m10391D() {
        return this.zze;
    }
}
