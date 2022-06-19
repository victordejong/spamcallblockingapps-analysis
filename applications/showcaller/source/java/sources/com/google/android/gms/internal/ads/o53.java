package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o53.class */
public final class o53 extends ie3<o53, n53> implements nf3 {
    private static final o53 zzf;
    private int zzb;
    private r53 zze;

    static {
        o53 o53Var = new o53();
        zzf = o53Var;
        ie3.m14414z(o53.class, o53Var);
    }

    private o53() {
    }

    /* renamed from: E */
    public static o53 m12723E(zzgex zzgexVar, vd3 vd3Var) {
        return (o53) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static n53 m12722F() {
        return zzf.m14418v();
    }

    /* renamed from: I */
    public static /* synthetic */ void m12719I(o53 o53Var, r53 r53Var) {
        r53Var.getClass();
        o53Var.zze = r53Var;
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
                return new o53();
            }
            if (i2 == 4) {
                return new n53(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m12725C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final r53 m12724D() {
        r53 r53Var = this.zze;
        r53 r53Var2 = r53Var;
        if (r53Var == null) {
            r53Var2 = r53.m11690E();
        }
        return r53Var2;
    }
}
