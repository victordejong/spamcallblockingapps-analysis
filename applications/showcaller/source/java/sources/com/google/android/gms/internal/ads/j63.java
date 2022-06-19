package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j63.class */
public final class j63 extends ie3<j63, i63> implements nf3 {
    private static final j63 zzg;
    private int zzb;
    private p63 zze;
    private zzgex zzf = zzgex.f34110d;

    static {
        j63 j63Var = new j63();
        zzg = j63Var;
        ie3.m14414z(j63.class, j63Var);
    }

    private j63() {
    }

    /* renamed from: F */
    public static j63 m14171F(zzgex zzgexVar, vd3 vd3Var) {
        return (j63) ie3.m14421s(zzg, zzgexVar, vd3Var);
    }

    /* renamed from: G */
    public static i63 m14170G() {
        return zzg.m14418v();
    }

    /* renamed from: J */
    public static /* synthetic */ void m14167J(j63 j63Var, p63 p63Var) {
        p63Var.getClass();
        j63Var.zze = p63Var;
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
                return new j63();
            }
            if (i2 == 4) {
                return new i63(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m14174C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final p63 m14173D() {
        p63 p63Var = this.zze;
        p63 p63Var2 = p63Var;
        if (p63Var == null) {
            p63Var2 = p63.m12375E();
        }
        return p63Var2;
    }

    /* renamed from: E */
    public final zzgex m14172E() {
        return this.zzf;
    }
}
