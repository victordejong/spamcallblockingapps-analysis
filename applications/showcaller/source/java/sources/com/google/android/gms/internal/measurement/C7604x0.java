package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.x0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/x0.class */
public final class C7604x0 extends AbstractC7609x5<C7604x0, C7591w0> implements AbstractC7636z6 {
    private static final C7604x0 zzk;
    private int zza;
    private int zze;
    private String zzf = "";
    private C7513q0 zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        C7604x0 c7604x0 = new C7604x0();
        zzk = c7604x0;
        AbstractC7609x5.m6759w(C7604x0.class, c7604x0);
    }

    private C7604x0() {
    }

    /* renamed from: I */
    public static C7591w0 m6780I() {
        return zzk.m6762s();
    }

    /* renamed from: K */
    public static /* synthetic */ void m6778K(C7604x0 c7604x0, String str) {
        c7604x0.zza |= 2;
        c7604x0.zzf = str;
    }

    /* renamed from: A */
    public final boolean m6788A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final int m6787B() {
        return this.zze;
    }

    /* renamed from: C */
    public final String m6786C() {
        return this.zzf;
    }

    /* renamed from: D */
    public final C7513q0 m6785D() {
        C7513q0 c7513q0 = this.zzg;
        C7513q0 c7513q02 = c7513q0;
        if (c7513q0 == null) {
            c7513q02 = C7513q0.m7013I();
        }
        return c7513q02;
    }

    /* renamed from: E */
    public final boolean m6784E() {
        return this.zzh;
    }

    /* renamed from: F */
    public final boolean m6783F() {
        return this.zzi;
    }

    /* renamed from: G */
    public final boolean m6782G() {
        return (this.zza & 32) != 0;
    }

    /* renamed from: H */
    public final boolean m6781H() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001င��\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new C7604x0();
            }
            if (i2 == 4) {
                return new C7591w0(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }
}
