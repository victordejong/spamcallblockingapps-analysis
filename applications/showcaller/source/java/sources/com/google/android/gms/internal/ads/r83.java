package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r83.class */
public final class r83 extends ie3<r83, q83> implements nf3 {
    private static final r83 zzg;
    private int zzb;
    private x83 zze;
    private zzgex zzf = zzgex.f34110d;

    static {
        r83 r83Var = new r83();
        zzg = r83Var;
        ie3.m14414z(r83.class, r83Var);
    }

    private r83() {
    }

    /* renamed from: F */
    public static r83 m11664F(zzgex zzgexVar, vd3 vd3Var) {
        return (r83) ie3.m14421s(zzg, zzgexVar, vd3Var);
    }

    /* renamed from: G */
    public static q83 m11663G() {
        return zzg.m14418v();
    }

    /* renamed from: H */
    public static r83 m11662H() {
        return zzg;
    }

    /* renamed from: L */
    public static /* synthetic */ void m11659L(r83 r83Var, x83 x83Var) {
        x83Var.getClass();
        r83Var.zze = x83Var;
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
                return new r83();
            }
            if (i2 == 4) {
                return new q83(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m11667C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final x83 m11666D() {
        x83 x83Var = this.zze;
        x83 x83Var2 = x83Var;
        if (x83Var == null) {
            x83Var2 = x83.m9325E();
        }
        return x83Var2;
    }

    /* renamed from: E */
    public final zzgex m11665E() {
        return this.zzf;
    }
}
