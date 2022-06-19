package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.n1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/n1.class */
public final class C7472n1 extends AbstractC7609x5<C7472n1, C7458m1> implements AbstractC7636z6 {
    private static final C7472n1 zzi;
    private int zza;
    private int zze;
    private C7375g2 zzf;
    private C7375g2 zzg;
    private boolean zzh;

    static {
        C7472n1 c7472n1 = new C7472n1();
        zzi = c7472n1;
        AbstractC7609x5.m6759w(C7472n1.class, c7472n1);
    }

    private C7472n1() {
    }

    /* renamed from: H */
    public static C7458m1 m7087H() {
        return zzi.m6762s();
    }

    /* renamed from: J */
    public static /* synthetic */ void m7085J(C7472n1 c7472n1, int i) {
        c7472n1.zza |= 1;
        c7472n1.zze = i;
    }

    /* renamed from: K */
    public static /* synthetic */ void m7084K(C7472n1 c7472n1, C7375g2 c7375g2) {
        c7375g2.getClass();
        c7472n1.zzf = c7375g2;
        c7472n1.zza |= 2;
    }

    /* renamed from: L */
    public static /* synthetic */ void m7083L(C7472n1 c7472n1, C7375g2 c7375g2) {
        c7472n1.zzg = c7375g2;
        c7472n1.zza |= 4;
    }

    /* renamed from: M */
    public static /* synthetic */ void m7082M(C7472n1 c7472n1, boolean z) {
        c7472n1.zza |= 8;
        c7472n1.zzh = z;
    }

    /* renamed from: A */
    public final boolean m7094A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final int m7093B() {
        return this.zze;
    }

    /* renamed from: C */
    public final C7375g2 m7092C() {
        C7375g2 c7375g2 = this.zzf;
        C7375g2 c7375g22 = c7375g2;
        if (c7375g2 == null) {
            c7375g22 = C7375g2.m7435L();
        }
        return c7375g22;
    }

    /* renamed from: D */
    public final boolean m7091D() {
        return (this.zza & 4) != 0;
    }

    /* renamed from: E */
    public final C7375g2 m7090E() {
        C7375g2 c7375g2 = this.zzg;
        C7375g2 c7375g22 = c7375g2;
        if (c7375g2 == null) {
            c7375g22 = C7375g2.m7435L();
        }
        return c7375g22;
    }

    /* renamed from: F */
    public final boolean m7089F() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: G */
    public final boolean m7088G() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new C7472n1();
            }
            if (i2 == 4) {
                return new C7458m1(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }
}
