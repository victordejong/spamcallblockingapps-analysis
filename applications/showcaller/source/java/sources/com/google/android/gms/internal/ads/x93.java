package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x93.class */
public final class x93 extends ie3<x93, w93> implements nf3 {
    private static final x93 zze;
    private String zzb = "";

    static {
        x93 x93Var = new x93();
        zze = x93Var;
        ie3.m14414z(x93.class, x93Var);
    }

    private x93() {
    }

    /* renamed from: D */
    public static x93 m9308D(zzgex zzgexVar, vd3 vd3Var) {
        return (x93) ie3.m14421s(zze, zzgexVar, vd3Var);
    }

    /* renamed from: E */
    public static x93 m9307E() {
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zze, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"zzb"});
            }
            if (i2 == 3) {
                return new x93();
            }
            if (i2 == 4) {
                return new w93(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final String m9309C() {
        return this.zzb;
    }
}
