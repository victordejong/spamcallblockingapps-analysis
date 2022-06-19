package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e24.class */
public final class e24 extends ie3<e24, d24> implements nf3 {
    private static final e24 zzi;
    private int zzb;
    private zzgex zze;
    private zzgex zzf;
    private zzgex zzg;
    private zzgex zzh;

    static {
        e24 e24Var = new e24();
        zzi = e24Var;
        ie3.m14414z(e24.class, e24Var);
    }

    private e24() {
        zzgex zzgexVar = zzgex.f34110d;
        this.zze = zzgexVar;
        this.zzf = zzgexVar;
        this.zzg = zzgexVar;
        this.zzh = zzgexVar;
    }

    /* renamed from: G */
    public static e24 m15599G(byte[] bArr, vd3 vd3Var) {
        return (e24) ie3.m14419u(zzi, bArr, vd3Var);
    }

    /* renamed from: H */
    public static d24 m15598H() {
        return zzi.m14418v();
    }

    /* renamed from: I */
    public static /* synthetic */ e24 m15597I() {
        return zzi;
    }

    /* renamed from: J */
    public static /* synthetic */ void m15596J(e24 e24Var, zzgex zzgexVar) {
        e24Var.zzb |= 1;
        e24Var.zze = zzgexVar;
    }

    /* renamed from: L */
    public static /* synthetic */ void m15595L(e24 e24Var, zzgex zzgexVar) {
        e24Var.zzb |= 2;
        e24Var.zzf = zzgexVar;
    }

    /* renamed from: M */
    public static /* synthetic */ void m15594M(e24 e24Var, zzgex zzgexVar) {
        e24Var.zzb |= 4;
        e24Var.zzg = zzgexVar;
    }

    /* renamed from: O */
    public static /* synthetic */ void m15593O(e24 e24Var, zzgex zzgexVar) {
        e24Var.zzb |= 8;
        e24Var.zzh = zzgexVar;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ည��\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new e24();
            }
            if (i2 == 4) {
                return new d24(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final zzgex m15603C() {
        return this.zze;
    }

    /* renamed from: D */
    public final zzgex m15602D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final zzgex m15601E() {
        return this.zzg;
    }

    /* renamed from: F */
    public final zzgex m15600F() {
        return this.zzh;
    }
}
