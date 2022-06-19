package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v63.class */
public final class v63 extends ie3<v63, u63> implements nf3 {
    private static final v63 zzf;
    private int zzb;
    private int zze;

    static {
        v63 v63Var = new v63();
        zzf = v63Var;
        ie3.m14414z(v63.class, v63Var);
    }

    private v63() {
    }

    /* renamed from: D */
    public static v63 m10083D(zzgex zzgexVar, vd3 vd3Var) {
        return (v63) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: E */
    public static u63 m10082E() {
        return zzf.m14418v();
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0002\u0003\u0002������\u0002\u000b\u0003\u000b", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new v63();
            }
            if (i2 == 4) {
                return new u63(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m10084C() {
        return this.zzb;
    }
}
