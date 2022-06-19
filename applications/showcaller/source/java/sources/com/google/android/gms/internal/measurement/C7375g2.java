package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.g2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/g2.class */
public final class C7375g2 extends AbstractC7609x5<C7375g2, C7361f2> implements AbstractC7636z6 {
    private static final C7375g2 zzh;
    private AbstractC7337d6 zza = AbstractC7609x5.m6766o();
    private AbstractC7337d6 zze = AbstractC7609x5.m6766o();
    private AbstractC7351e6<C7514q1> zzf = AbstractC7609x5.m6764q();
    private AbstractC7351e6<C7403i2> zzg = AbstractC7609x5.m6764q();

    static {
        C7375g2 c7375g2 = new C7375g2();
        zzh = c7375g2;
        AbstractC7609x5.m6759w(C7375g2.class, c7375g2);
    }

    private C7375g2() {
    }

    /* renamed from: K */
    public static C7361f2 m7436K() {
        return zzh.m6762s();
    }

    /* renamed from: L */
    public static C7375g2 m7435L() {
        return zzh;
    }

    /* renamed from: N */
    public static /* synthetic */ void m7433N(C7375g2 c7375g2, Iterable iterable) {
        AbstractC7337d6 abstractC7337d6 = c7375g2.zza;
        if (!abstractC7337d6.zza()) {
            c7375g2.zza = AbstractC7609x5.m6765p(abstractC7337d6);
        }
        AbstractC7489o4.m7044l(iterable, c7375g2.zza);
    }

    /* renamed from: P */
    public static /* synthetic */ void m7431P(C7375g2 c7375g2, Iterable iterable) {
        AbstractC7337d6 abstractC7337d6 = c7375g2.zze;
        if (!abstractC7337d6.zza()) {
            c7375g2.zze = AbstractC7609x5.m6765p(abstractC7337d6);
        }
        AbstractC7489o4.m7044l(iterable, c7375g2.zze);
    }

    /* renamed from: R */
    public static /* synthetic */ void m7429R(C7375g2 c7375g2, Iterable iterable) {
        c7375g2.m7425V();
        AbstractC7489o4.m7044l(iterable, c7375g2.zzf);
    }

    /* renamed from: S */
    public static /* synthetic */ void m7428S(C7375g2 c7375g2, int i) {
        c7375g2.m7425V();
        c7375g2.zzf.remove(i);
    }

    /* renamed from: T */
    public static /* synthetic */ void m7427T(C7375g2 c7375g2, Iterable iterable) {
        c7375g2.m7424W();
        AbstractC7489o4.m7044l(iterable, c7375g2.zzg);
    }

    /* renamed from: U */
    public static /* synthetic */ void m7426U(C7375g2 c7375g2, int i) {
        c7375g2.m7424W();
        c7375g2.zzg.remove(i);
    }

    /* renamed from: V */
    private final void m7425V() {
        AbstractC7351e6<C7514q1> abstractC7351e6 = this.zzf;
        if (!abstractC7351e6.zza()) {
            this.zzf = AbstractC7609x5.m6763r(abstractC7351e6);
        }
    }

    /* renamed from: W */
    private final void m7424W() {
        AbstractC7351e6<C7403i2> abstractC7351e6 = this.zzg;
        if (!abstractC7351e6.zza()) {
            this.zzg = AbstractC7609x5.m6763r(abstractC7351e6);
        }
    }

    /* renamed from: A */
    public final List<Long> m7446A() {
        return this.zza;
    }

    /* renamed from: B */
    public final int m7445B() {
        return this.zza.size();
    }

    /* renamed from: C */
    public final List<Long> m7444C() {
        return this.zze;
    }

    /* renamed from: D */
    public final int m7443D() {
        return this.zze.size();
    }

    /* renamed from: E */
    public final List<C7514q1> m7442E() {
        return this.zzf;
    }

    /* renamed from: F */
    public final int m7441F() {
        return this.zzf.size();
    }

    /* renamed from: G */
    public final C7514q1 m7440G(int i) {
        return this.zzf.get(i);
    }

    /* renamed from: H */
    public final List<C7403i2> m7439H() {
        return this.zzg;
    }

    /* renamed from: I */
    public final int m7438I() {
        return this.zzg.size();
    }

    /* renamed from: J */
    public final C7403i2 m7437J(int i) {
        return this.zzg.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzh, "\u0001\u0004����\u0001\u0004\u0004��\u0004��\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zza", "zze", "zzf", C7514q1.class, "zzg", C7403i2.class});
            }
            if (i2 == 3) {
                return new C7375g2();
            }
            if (i2 == 4) {
                return new C7361f2(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
