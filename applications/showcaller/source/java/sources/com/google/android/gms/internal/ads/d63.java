package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d63.class */
public final class d63 extends ie3<d63, c63> implements nf3 {
    private static final d63 zzf;
    private g63 zzb;
    private int zze;

    static {
        d63 d63Var = new d63();
        zzf = d63Var;
        ie3.m14414z(d63.class, d63Var);
    }

    private d63() {
    }

    /* renamed from: E */
    public static d63 m15933E(zzgex zzgexVar, vd3 vd3Var) {
        return (d63) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static c63 m15932F() {
        return zzf.m14418v();
    }

    /* renamed from: G */
    public static d63 m15931G() {
        return zzf;
    }

    /* renamed from: I */
    public static /* synthetic */ void m15929I(d63 d63Var, g63 g63Var) {
        g63Var.getClass();
        d63Var.zzb = g63Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new d63();
            }
            if (i2 == 4) {
                return new c63(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final g63 m15935C() {
        g63 g63Var = this.zzb;
        g63 g63Var2 = g63Var;
        if (g63Var == null) {
            g63Var2 = g63.m14977E();
        }
        return g63Var2;
    }

    /* renamed from: D */
    public final int m15934D() {
        return this.zze;
    }
}
