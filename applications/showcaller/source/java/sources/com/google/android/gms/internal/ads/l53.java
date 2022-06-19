package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l53.class */
public final class l53 extends ie3<l53, k53> implements nf3 {
    private static final l53 zzg;
    private int zzb;
    private zzgex zze = zzgex.f34110d;
    private r53 zzf;

    static {
        l53 l53Var = new l53();
        zzg = l53Var;
        ie3.m14414z(l53.class, l53Var);
    }

    private l53() {
    }

    /* renamed from: F */
    public static l53 m13685F(zzgex zzgexVar, vd3 vd3Var) {
        return (l53) ie3.m14421s(zzg, zzgexVar, vd3Var);
    }

    /* renamed from: G */
    public static k53 m13684G() {
        return zzg.m14418v();
    }

    /* renamed from: L */
    public static /* synthetic */ void m13680L(l53 l53Var, r53 r53Var) {
        r53Var.getClass();
        l53Var.zzf = r53Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new l53();
            }
            if (i2 == 4) {
                return new k53(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m13688C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final zzgex m13687D() {
        return this.zze;
    }

    /* renamed from: E */
    public final r53 m13686E() {
        r53 r53Var = this.zzf;
        r53 r53Var2 = r53Var;
        if (r53Var == null) {
            r53Var2 = r53.m11690E();
        }
        return r53Var2;
    }
}
