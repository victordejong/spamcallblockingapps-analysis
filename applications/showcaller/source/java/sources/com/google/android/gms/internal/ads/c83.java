package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c83.class */
public final class c83 extends ie3<c83, b83> implements nf3 {
    private static final c83 zzg;
    private int zzb;
    private f83 zze;
    private zzgex zzf = zzgex.f34110d;

    static {
        c83 c83Var = new c83();
        zzg = c83Var;
        ie3.m14414z(c83.class, c83Var);
    }

    private c83() {
    }

    /* renamed from: F */
    public static c83 m16107F(zzgex zzgexVar, vd3 vd3Var) {
        return (c83) ie3.m14421s(zzg, zzgexVar, vd3Var);
    }

    /* renamed from: G */
    public static b83 m16106G() {
        return zzg.m14418v();
    }

    /* renamed from: J */
    public static /* synthetic */ void m16103J(c83 c83Var, f83 f83Var) {
        f83Var.getClass();
        c83Var.zze = f83Var;
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
                return new c83();
            }
            if (i2 == 4) {
                return new b83(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m16110C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final f83 m16109D() {
        f83 f83Var = this.zze;
        f83 f83Var2 = f83Var;
        if (f83Var == null) {
            f83Var2 = f83.m15295I();
        }
        return f83Var2;
    }

    /* renamed from: E */
    public final zzgex m16108E() {
        return this.zzf;
    }
}
