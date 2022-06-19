package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.f2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f2.class */
public final class C6463f2 extends ie3<C6463f2, C6426e2> implements nf3 {
    private static final C6463f2 zzh;
    private int zzb;
    private C6574i2 zze;
    private zzgex zzf;
    private zzgex zzg;

    static {
        C6463f2 c6463f2 = new C6463f2();
        zzh = c6463f2;
        ie3.m14414z(C6463f2.class, c6463f2);
    }

    private C6463f2() {
        zzgex zzgexVar = zzgex.f34110d;
        this.zzf = zzgexVar;
        this.zzg = zzgexVar;
    }

    /* renamed from: F */
    public static C6463f2 m15322F(zzgex zzgexVar, vd3 vd3Var) {
        return (C6463f2) ie3.m14421s(zzh, zzgexVar, vd3Var);
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new C6463f2();
            }
            if (i2 == 4) {
                return new C6426e2(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final C6574i2 m15325C() {
        C6574i2 c6574i2 = this.zze;
        C6574i2 c6574i22 = c6574i2;
        if (c6574i2 == null) {
            c6574i22 = C6574i2.m14503L();
        }
        return c6574i22;
    }

    /* renamed from: D */
    public final zzgex m15324D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final zzgex m15323E() {
        return this.zzg;
    }
}
