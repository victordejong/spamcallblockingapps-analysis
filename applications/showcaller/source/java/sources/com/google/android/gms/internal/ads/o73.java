package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o73.class */
public final class o73 extends ie3<o73, n73> implements nf3 {
    private static final o73 zzb;

    static {
        o73 o73Var = new o73();
        zzb = o73Var;
        ie3.m14414z(o73.class, o73Var);
    }

    private o73() {
    }

    /* renamed from: C */
    public static o73 m12713C(zzgex zzgexVar, vd3 vd3Var) {
        return (o73) ie3.m14421s(zzb, zzgexVar, vd3Var);
    }

    /* renamed from: D */
    public static o73 m12712D() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzb, "����", null);
            }
            if (i2 == 3) {
                return new o73();
            }
            if (i2 == 4) {
                return new n73(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
