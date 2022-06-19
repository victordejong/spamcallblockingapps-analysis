package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b73.class */
public final class b73 extends ie3<b73, a73> implements nf3 {
    private static final b73 zzf;
    private int zzb;
    private int zze;

    static {
        b73 b73Var = new b73();
        zzf = b73Var;
        ie3.m14414z(b73.class, b73Var);
    }

    private b73() {
    }

    /* renamed from: D */
    public static b73 m16436D(zzgex zzgexVar, vd3 vd3Var) {
        return (b73) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: E */
    public static a73 m16435E() {
        return zzf.m14418v();
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\u000b", new Object[]{"zze", "zzb"});
            }
            if (i2 == 3) {
                return new b73();
            }
            if (i2 == 4) {
                return new a73(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m16437C() {
        return this.zzb;
    }
}
