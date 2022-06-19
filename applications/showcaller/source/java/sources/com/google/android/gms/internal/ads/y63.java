package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y63.class */
public final class y63 extends ie3<y63, x63> implements nf3 {
    private static final y63 zzf;
    private int zzb;
    private zzgex zze = zzgex.f34110d;

    static {
        y63 y63Var = new y63();
        zzf = y63Var;
        ie3.m14414z(y63.class, y63Var);
    }

    private y63() {
    }

    /* renamed from: E */
    public static y63 m8925E(zzgex zzgexVar, vd3 vd3Var) {
        return (y63) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static x63 m8924F() {
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
                return new y63();
            }
            if (i2 == 4) {
                return new x63(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m8927C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final zzgex m8926D() {
        return this.zze;
    }
}
