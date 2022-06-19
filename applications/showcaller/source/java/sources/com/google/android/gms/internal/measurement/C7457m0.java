package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.m0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/m0.class */
public final class C7457m0 extends AbstractC7609x5<C7457m0, C7443l0> implements AbstractC7636z6 {
    private static final C7457m0 zzj;
    private int zza;
    private int zze;
    private AbstractC7351e6<C7604x0> zzf = AbstractC7609x5.m6764q();
    private AbstractC7351e6<C7485o0> zzg = AbstractC7609x5.m6764q();
    private boolean zzh;
    private boolean zzi;

    static {
        C7457m0 c7457m0 = new C7457m0();
        zzj = c7457m0;
        AbstractC7609x5.m6759w(C7457m0.class, c7457m0);
    }

    private C7457m0() {
    }

    /* renamed from: J */
    public static /* synthetic */ void m7170J(C7457m0 c7457m0, int i, C7604x0 c7604x0) {
        c7604x0.getClass();
        AbstractC7351e6<C7604x0> abstractC7351e6 = c7457m0.zzf;
        if (!abstractC7351e6.zza()) {
            c7457m0.zzf = AbstractC7609x5.m6763r(abstractC7351e6);
        }
        c7457m0.zzf.set(i, c7604x0);
    }

    /* renamed from: K */
    public static /* synthetic */ void m7169K(C7457m0 c7457m0, int i, C7485o0 c7485o0) {
        c7485o0.getClass();
        AbstractC7351e6<C7485o0> abstractC7351e6 = c7457m0.zzg;
        if (!abstractC7351e6.zza()) {
            c7457m0.zzg = AbstractC7609x5.m6763r(abstractC7351e6);
        }
        c7457m0.zzg.set(i, c7485o0);
    }

    /* renamed from: A */
    public final boolean m7179A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final int m7178B() {
        return this.zze;
    }

    /* renamed from: C */
    public final List<C7604x0> m7177C() {
        return this.zzf;
    }

    /* renamed from: D */
    public final int m7176D() {
        return this.zzf.size();
    }

    /* renamed from: E */
    public final C7604x0 m7175E(int i) {
        return this.zzf.get(i);
    }

    /* renamed from: F */
    public final List<C7485o0> m7174F() {
        return this.zzg;
    }

    /* renamed from: G */
    public final int m7173G() {
        return this.zzg.size();
    }

    /* renamed from: H */
    public final C7485o0 m7172H(int i) {
        return this.zzg.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001င��\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zza", "zze", "zzf", C7604x0.class, "zzg", C7485o0.class, "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new C7457m0();
            }
            if (i2 == 4) {
                return new C7443l0(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }
}
