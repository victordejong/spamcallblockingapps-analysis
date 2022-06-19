package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.w1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/w1.class */
public final class C7592w1 extends AbstractC7609x5<C7592w1, C7579v1> implements AbstractC7636z6 {
    private static final C7592w1 zzk;
    private int zza;
    private long zzg;
    private float zzh;
    private double zzi;
    private String zze = "";
    private String zzf = "";
    private AbstractC7351e6<C7592w1> zzj = AbstractC7609x5.m6764q();

    static {
        C7592w1 c7592w1 = new C7592w1();
        zzk = c7592w1;
        AbstractC7609x5.m6759w(C7592w1.class, c7592w1);
    }

    private C7592w1() {
    }

    /* renamed from: M */
    public static C7579v1 m6811M() {
        return zzk.m6762s();
    }

    /* renamed from: O */
    public static /* synthetic */ void m6809O(C7592w1 c7592w1, String str) {
        str.getClass();
        c7592w1.zza |= 1;
        c7592w1.zze = str;
    }

    /* renamed from: P */
    public static /* synthetic */ void m6808P(C7592w1 c7592w1, String str) {
        str.getClass();
        c7592w1.zza |= 2;
        c7592w1.zzf = str;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m6807Q(C7592w1 c7592w1) {
        c7592w1.zza &= -3;
        c7592w1.zzf = zzk.zzf;
    }

    /* renamed from: R */
    public static /* synthetic */ void m6806R(C7592w1 c7592w1, long j) {
        c7592w1.zza |= 4;
        c7592w1.zzg = j;
    }

    /* renamed from: S */
    public static /* synthetic */ void m6805S(C7592w1 c7592w1) {
        c7592w1.zza &= -5;
        c7592w1.zzg = 0L;
    }

    /* renamed from: T */
    public static /* synthetic */ void m6804T(C7592w1 c7592w1, double d) {
        c7592w1.zza |= 16;
        c7592w1.zzi = d;
    }

    /* renamed from: U */
    public static /* synthetic */ void m6803U(C7592w1 c7592w1) {
        c7592w1.zza &= -17;
        c7592w1.zzi = 0.0d;
    }

    /* renamed from: V */
    public static /* synthetic */ void m6802V(C7592w1 c7592w1, C7592w1 c7592w12) {
        c7592w12.getClass();
        c7592w1.m6799Y();
        c7592w1.zzj.add(c7592w12);
    }

    /* renamed from: W */
    public static /* synthetic */ void m6801W(C7592w1 c7592w1, Iterable iterable) {
        c7592w1.m6799Y();
        AbstractC7489o4.m7044l(iterable, c7592w1.zzj);
    }

    /* renamed from: Y */
    private final void m6799Y() {
        AbstractC7351e6<C7592w1> abstractC7351e6 = this.zzj;
        if (!abstractC7351e6.zza()) {
            this.zzj = AbstractC7609x5.m6763r(abstractC7351e6);
        }
    }

    /* renamed from: A */
    public final boolean m6823A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final String m6822B() {
        return this.zze;
    }

    /* renamed from: C */
    public final boolean m6821C() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: D */
    public final String m6820D() {
        return this.zzf;
    }

    /* renamed from: E */
    public final boolean m6819E() {
        return (this.zza & 4) != 0;
    }

    /* renamed from: F */
    public final long m6818F() {
        return this.zzg;
    }

    /* renamed from: G */
    public final boolean m6817G() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: H */
    public final float m6816H() {
        return this.zzh;
    }

    /* renamed from: I */
    public final boolean m6815I() {
        return (this.zza & 16) != 0;
    }

    /* renamed from: J */
    public final double m6814J() {
        return this.zzi;
    }

    /* renamed from: K */
    public final List<C7592w1> m6813K() {
        return this.zzj;
    }

    /* renamed from: L */
    public final int m6812L() {
        return this.zzj.size();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဈ��\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", C7592w1.class});
            }
            if (i2 == 3) {
                return new C7592w1();
            }
            if (i2 == 4) {
                return new C7579v1(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }
}
