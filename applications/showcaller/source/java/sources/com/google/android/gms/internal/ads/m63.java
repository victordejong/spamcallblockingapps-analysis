package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m63.class */
public final class m63 extends ie3<m63, l63> implements nf3 {
    private static final m63 zzf;
    private p63 zzb;
    private int zze;

    static {
        m63 m63Var = new m63();
        zzf = m63Var;
        ie3.m14414z(m63.class, m63Var);
    }

    private m63() {
    }

    /* renamed from: E */
    public static m63 m13359E(zzgex zzgexVar, vd3 vd3Var) {
        return (m63) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static l63 m13358F() {
        return zzf.m14418v();
    }

    /* renamed from: H */
    public static /* synthetic */ void m13356H(m63 m63Var, p63 p63Var) {
        p63Var.getClass();
        m63Var.zzb = p63Var;
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
                return new m63();
            }
            if (i2 == 4) {
                return new l63(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final p63 m13361C() {
        p63 p63Var = this.zzb;
        p63 p63Var2 = p63Var;
        if (p63Var == null) {
            p63Var2 = p63.m12375E();
        }
        return p63Var2;
    }

    /* renamed from: D */
    public final int m13360D() {
        return this.zze;
    }
}
