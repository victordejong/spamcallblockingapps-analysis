package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i73.class */
public final class i73 extends ie3<i73, h73> implements nf3 {
    private static final i73 zzf;
    private int zzb;
    private int zze;

    static {
        i73 i73Var = new i73();
        zzf = i73Var;
        ie3.m14414z(i73.class, i73Var);
    }

    private i73() {
    }

    /* renamed from: D */
    public static i73 m14469D(zzgex zzgexVar, vd3 vd3Var) {
        return (i73) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: E */
    public static h73 m14468E() {
        return zzf.m14418v();
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\u000b", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new i73();
            }
            if (i2 == 4) {
                return new h73(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m14470C() {
        return this.zzb;
    }
}
