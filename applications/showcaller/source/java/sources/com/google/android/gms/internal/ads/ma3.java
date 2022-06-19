package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ma3.class */
public final class ma3 extends ie3<ma3, la3> implements nf3 {
    private static final ma3 zzf;
    private int zzb;
    private zzgex zze = zzgex.f34110d;

    static {
        ma3 ma3Var = new ma3();
        zzf = ma3Var;
        ie3.m14414z(ma3.class, ma3Var);
    }

    private ma3() {
    }

    /* renamed from: E */
    public static ma3 m13319E(zzgex zzgexVar, vd3 vd3Var) {
        return (ma3) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static la3 m13318F() {
        return zzf.m14418v();
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new ma3();
            }
            if (i2 == 4) {
                return new la3(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m13321C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final zzgex m13320D() {
        return this.zze;
    }
}
