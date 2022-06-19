package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s63.class */
public final class s63 extends ie3<s63, r63> implements nf3 {
    private static final s63 zzf;
    private int zzb;
    private zzgex zze = zzgex.f34110d;

    static {
        s63 s63Var = new s63();
        zzf = s63Var;
        ie3.m14414z(s63.class, s63Var);
    }

    private s63() {
    }

    /* renamed from: E */
    public static s63 m11109E(zzgex zzgexVar, vd3 vd3Var) {
        return (s63) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static r63 m11108F() {
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
                return new s63();
            }
            if (i2 == 4) {
                return new r63(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m11111C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final zzgex m11110D() {
        return this.zze;
    }
}
