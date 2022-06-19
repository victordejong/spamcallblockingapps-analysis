package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e73.class */
public final class e73 extends ie3<e73, d73> implements nf3 {
    private static final e73 zzf;
    private int zzb;
    private zzgex zze = zzgex.f34110d;

    static {
        e73 e73Var = new e73();
        zzf = e73Var;
        ie3.m14414z(e73.class, e73Var);
    }

    private e73() {
    }

    /* renamed from: E */
    public static e73 m15558E(zzgex zzgexVar, vd3 vd3Var) {
        return (e73) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static d73 m15557F() {
        return zzf.m14418v();
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\n", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new e73();
            }
            if (i2 == 4) {
                return new d73(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m15560C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final zzgex m15559D() {
        return this.zze;
    }
}
