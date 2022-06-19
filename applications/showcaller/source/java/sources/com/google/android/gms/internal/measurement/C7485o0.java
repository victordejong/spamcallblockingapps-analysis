package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.o0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/o0.class */
public final class C7485o0 extends AbstractC7609x5<C7485o0, C7471n0> implements AbstractC7636z6 {
    private static final C7485o0 zzm;
    private int zza;
    private int zze;
    private String zzf = "";
    private AbstractC7351e6<C7513q0> zzg = AbstractC7609x5.m6764q();
    private boolean zzh;
    private C7578v0 zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;

    static {
        C7485o0 c7485o0 = new C7485o0();
        zzm = c7485o0;
        AbstractC7609x5.m6759w(C7485o0.class, c7485o0);
    }

    private C7485o0() {
    }

    /* renamed from: M */
    public static C7471n0 m7051M() {
        return zzm.m6762s();
    }

    /* renamed from: O */
    public static /* synthetic */ void m7049O(C7485o0 c7485o0, String str) {
        c7485o0.zza |= 2;
        c7485o0.zzf = str;
    }

    /* renamed from: P */
    public static /* synthetic */ void m7048P(C7485o0 c7485o0, int i, C7513q0 c7513q0) {
        c7513q0.getClass();
        AbstractC7351e6<C7513q0> abstractC7351e6 = c7485o0.zzg;
        if (!abstractC7351e6.zza()) {
            c7485o0.zzg = AbstractC7609x5.m6763r(abstractC7351e6);
        }
        c7485o0.zzg.set(i, c7513q0);
    }

    /* renamed from: A */
    public final boolean m7063A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final int m7062B() {
        return this.zze;
    }

    /* renamed from: C */
    public final String m7061C() {
        return this.zzf;
    }

    /* renamed from: D */
    public final List<C7513q0> m7060D() {
        return this.zzg;
    }

    /* renamed from: E */
    public final int m7059E() {
        return this.zzg.size();
    }

    /* renamed from: F */
    public final C7513q0 m7058F(int i) {
        return this.zzg.get(i);
    }

    /* renamed from: G */
    public final boolean m7057G() {
        return (this.zza & 8) != 0;
    }

    /* renamed from: H */
    public final C7578v0 m7056H() {
        C7578v0 c7578v0 = this.zzi;
        C7578v0 c7578v02 = c7578v0;
        if (c7578v0 == null) {
            c7578v02 = C7578v0.m6849K();
        }
        return c7578v02;
    }

    /* renamed from: I */
    public final boolean m7055I() {
        return this.zzj;
    }

    /* renamed from: J */
    public final boolean m7054J() {
        return this.zzk;
    }

    /* renamed from: K */
    public final boolean m7053K() {
        return (this.zza & 64) != 0;
    }

    /* renamed from: L */
    public final boolean m7052L() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzm, "\u0001\b��\u0001\u0001\b\b��\u0001��\u0001င��\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zza", "zze", "zzf", "zzg", C7513q0.class, "zzh", "zzi", "zzj", "zzk", "zzl"});
            }
            if (i2 == 3) {
                return new C7485o0();
            }
            if (i2 == 4) {
                return new C7471n0(null);
            }
            if (i2 == 5) {
                return zzm;
            }
            return null;
        }
        return (byte) 1;
    }
}
