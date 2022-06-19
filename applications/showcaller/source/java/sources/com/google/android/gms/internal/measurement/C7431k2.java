package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.k2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/k2.class */
public final class C7431k2 extends AbstractC7609x5<C7431k2, C7417j2> implements AbstractC7636z6 {
    private static final C7431k2 zzk;
    private int zza;
    private long zze;
    private String zzf = "";
    private String zzg = "";
    private long zzh;
    private float zzi;
    private double zzj;

    static {
        C7431k2 c7431k2 = new C7431k2();
        zzk = c7431k2;
        AbstractC7609x5.m6759w(C7431k2.class, c7431k2);
    }

    private C7431k2() {
    }

    /* renamed from: J */
    public static C7417j2 m7224J() {
        return zzk.m6762s();
    }

    /* renamed from: L */
    public static /* synthetic */ void m7222L(C7431k2 c7431k2, long j) {
        c7431k2.zza |= 1;
        c7431k2.zze = j;
    }

    /* renamed from: M */
    public static /* synthetic */ void m7221M(C7431k2 c7431k2, String str) {
        str.getClass();
        c7431k2.zza |= 2;
        c7431k2.zzf = str;
    }

    /* renamed from: N */
    public static /* synthetic */ void m7220N(C7431k2 c7431k2, String str) {
        str.getClass();
        c7431k2.zza |= 4;
        c7431k2.zzg = str;
    }

    /* renamed from: O */
    public static /* synthetic */ void m7219O(C7431k2 c7431k2) {
        c7431k2.zza &= -5;
        c7431k2.zzg = zzk.zzg;
    }

    /* renamed from: P */
    public static /* synthetic */ void m7218P(C7431k2 c7431k2, long j) {
        c7431k2.zza |= 8;
        c7431k2.zzh = j;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m7217Q(C7431k2 c7431k2) {
        c7431k2.zza &= -9;
        c7431k2.zzh = 0L;
    }

    /* renamed from: R */
    public static /* synthetic */ void m7216R(C7431k2 c7431k2, double d) {
        c7431k2.zza |= 32;
        c7431k2.zzj = d;
    }

    /* renamed from: S */
    public static /* synthetic */ void m7215S(C7431k2 c7431k2) {
        c7431k2.zza &= -33;
        c7431k2.zzj = 0.0d;
    }

    /* renamed from: A */
    public final boolean m7233A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final long m7232B() {
        return this.zze;
    }

    /* renamed from: C */
    public final String m7231C() {
        return this.zzf;
    }

    /* renamed from: D */
    public final boolean m7230D() {
        return (this.zza & 4) != 0;
    }

    /* renamed from: E */
    public final String m7229E() {
        return this.zzg;
    }

    /* renamed from: F */
    public final boolean m7228F() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: G */
    public final long m7227G() {
        return this.zzh;
    }

    /* renamed from: H */
    public final boolean m7226H() {
        return (this.zza & 32) != 0;
    }

    /* renamed from: I */
    public final double m7225I() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new C7431k2();
            }
            if (i2 == 4) {
                return new C7417j2(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }
}
