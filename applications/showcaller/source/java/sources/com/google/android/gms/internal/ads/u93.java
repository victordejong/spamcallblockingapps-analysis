package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u93.class */
public final class u93 extends ie3<u93, t93> implements nf3 {
    private static final u93 zzf;
    private int zzb;
    private x93 zze;

    static {
        u93 u93Var = new u93();
        zzf = u93Var;
        ie3.m14414z(u93.class, u93Var);
    }

    private u93() {
    }

    /* renamed from: E */
    public static u93 m10382E(zzgex zzgexVar, vd3 vd3Var) {
        return (u93) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static t93 m10381F() {
        return zzf.m14418v();
    }

    /* renamed from: I */
    public static /* synthetic */ void m10378I(u93 u93Var, x93 x93Var) {
        x93Var.getClass();
        u93Var.zze = x93Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new u93();
            }
            if (i2 == 4) {
                return new t93(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m10384C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final x93 m10383D() {
        x93 x93Var = this.zze;
        x93 x93Var2 = x93Var;
        if (x93Var == null) {
            x93Var2 = x93.m9307E();
        }
        return x93Var2;
    }
}
