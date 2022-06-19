package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pa3.class */
public final class pa3 extends ie3<pa3, oa3> implements nf3 {
    private static final pa3 zze;
    private int zzb;

    static {
        pa3 pa3Var = new pa3();
        zze = pa3Var;
        ie3.m14414z(pa3.class, pa3Var);
    }

    private pa3() {
    }

    /* renamed from: C */
    public static pa3 m12326C(zzgex zzgexVar, vd3 vd3Var) {
        return (pa3) ie3.m14421s(zze, zzgexVar, vd3Var);
    }

    /* renamed from: D */
    public static pa3 m12325D() {
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zze, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzb"});
            }
            if (i2 == 3) {
                return new pa3();
            }
            if (i2 == 4) {
                return new oa3(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
