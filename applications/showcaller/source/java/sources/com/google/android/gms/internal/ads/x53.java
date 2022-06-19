package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x53.class */
public final class x53 extends ie3<x53, w53> implements nf3 {
    private static final x53 zzf;
    private d63 zzb;
    private u83 zze;

    static {
        x53 x53Var = new x53();
        zzf = x53Var;
        ie3.m14414z(x53.class, x53Var);
    }

    private x53() {
    }

    /* renamed from: E */
    public static x53 m9343E(zzgex zzgexVar, vd3 vd3Var) {
        return (x53) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static w53 m9342F() {
        return zzf.m14418v();
    }

    /* renamed from: H */
    public static /* synthetic */ void m9340H(x53 x53Var, d63 d63Var) {
        d63Var.getClass();
        x53Var.zzb = d63Var;
    }

    /* renamed from: I */
    public static /* synthetic */ void m9339I(x53 x53Var, u83 u83Var) {
        u83Var.getClass();
        x53Var.zze = u83Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new x53();
            }
            if (i2 == 4) {
                return new w53(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final d63 m9345C() {
        d63 d63Var = this.zzb;
        d63 d63Var2 = d63Var;
        if (d63Var == null) {
            d63Var2 = d63.m15931G();
        }
        return d63Var2;
    }

    /* renamed from: D */
    public final u83 m9344D() {
        u83 u83Var = this.zze;
        u83 u83Var2 = u83Var;
        if (u83Var == null) {
            u83Var2 = u83.m10388G();
        }
        return u83Var2;
    }
}
