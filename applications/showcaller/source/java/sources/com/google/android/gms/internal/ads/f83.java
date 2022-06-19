package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f83.class */
public final class f83 extends ie3<f83, e83> implements nf3 {
    private static final f83 zzh;
    private int zzb;
    private z73 zze;
    private zzgex zzf;
    private zzgex zzg;

    static {
        f83 f83Var = new f83();
        zzh = f83Var;
        ie3.m14414z(f83.class, f83Var);
    }

    private f83() {
        zzgex zzgexVar = zzgex.f34110d;
        this.zzf = zzgexVar;
        this.zzg = zzgexVar;
    }

    /* renamed from: G */
    public static f83 m15297G(zzgex zzgexVar, vd3 vd3Var) {
        return (f83) ie3.m14421s(zzh, zzgexVar, vd3Var);
    }

    /* renamed from: H */
    public static e83 m15296H() {
        return zzh.m14418v();
    }

    /* renamed from: I */
    public static f83 m15295I() {
        return zzh;
    }

    /* renamed from: M */
    public static /* synthetic */ void m15292M(f83 f83Var, z73 z73Var) {
        z73Var.getClass();
        f83Var.zze = z73Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "��\u0004����\u0001\u0004\u0004������\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new f83();
            }
            if (i2 == 4) {
                return new e83(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m15301C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final z73 m15300D() {
        z73 z73Var = this.zze;
        z73 z73Var2 = z73Var;
        if (z73Var == null) {
            z73Var2 = z73.m8492F();
        }
        return z73Var2;
    }

    /* renamed from: E */
    public final zzgex m15299E() {
        return this.zzf;
    }

    /* renamed from: F */
    public final zzgex m15298F() {
        return this.zzg;
    }
}
