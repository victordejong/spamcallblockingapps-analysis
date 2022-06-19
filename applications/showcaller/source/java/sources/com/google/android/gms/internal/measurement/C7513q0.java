package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.q0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/q0.class */
public final class C7513q0 extends AbstractC7609x5<C7513q0, C7499p0> implements AbstractC7636z6 {
    private static final C7513q0 zzi;
    private int zza;
    private C7304b1 zze;
    private C7578v0 zzf;
    private boolean zzg;
    private String zzh = "";

    static {
        C7513q0 c7513q0 = new C7513q0();
        zzi = c7513q0;
        AbstractC7609x5.m6759w(C7513q0.class, c7513q0);
    }

    private C7513q0() {
    }

    /* renamed from: I */
    public static C7513q0 m7013I() {
        return zzi;
    }

    /* renamed from: K */
    public static /* synthetic */ void m7011K(C7513q0 c7513q0, String str) {
        c7513q0.zza |= 8;
        c7513q0.zzh = str;
    }

    /* renamed from: A */
    public final boolean m7021A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final C7304b1 m7020B() {
        C7304b1 c7304b1 = this.zze;
        C7304b1 c7304b12 = c7304b1;
        if (c7304b1 == null) {
            c7304b12 = C7304b1.m7669I();
        }
        return c7304b12;
    }

    /* renamed from: C */
    public final boolean m7019C() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: D */
    public final C7578v0 m7018D() {
        C7578v0 c7578v0 = this.zzf;
        C7578v0 c7578v02 = c7578v0;
        if (c7578v0 == null) {
            c7578v02 = C7578v0.m6849K();
        }
        return c7578v02;
    }

    /* renamed from: E */
    public final boolean m7017E() {
        return (this.zza & 4) != 0;
    }

    /* renamed from: F */
    public final boolean m7016F() {
        return this.zzg;
    }

    /* renamed from: G */
    public final boolean m7015G() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: H */
    public final String m7014H() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new C7513q0();
            }
            if (i2 == 4) {
                return new C7499p0(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }
}
