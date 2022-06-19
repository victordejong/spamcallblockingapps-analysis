package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.i2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i2.class */
public final class C7403i2 extends AbstractC7609x5<C7403i2, C7389h2> implements AbstractC7636z6 {
    private static final C7403i2 zzg;
    private int zza;
    private int zze;
    private AbstractC7337d6 zzf = AbstractC7609x5.m6766o();

    static {
        C7403i2 c7403i2 = new C7403i2();
        zzg = c7403i2;
        AbstractC7609x5.m6759w(C7403i2.class, c7403i2);
    }

    private C7403i2() {
    }

    /* renamed from: F */
    public static C7389h2 m7340F() {
        return zzg.m6762s();
    }

    /* renamed from: H */
    public static /* synthetic */ void m7338H(C7403i2 c7403i2, int i) {
        c7403i2.zza |= 1;
        c7403i2.zze = i;
    }

    /* renamed from: I */
    public static /* synthetic */ void m7337I(C7403i2 c7403i2, Iterable iterable) {
        AbstractC7337d6 abstractC7337d6 = c7403i2.zzf;
        if (!abstractC7337d6.zza()) {
            c7403i2.zzf = AbstractC7609x5.m6765p(abstractC7337d6);
        }
        AbstractC7489o4.m7044l(iterable, c7403i2.zzf);
    }

    /* renamed from: A */
    public final boolean m7345A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final int m7344B() {
        return this.zze;
    }

    /* renamed from: C */
    public final List<Long> m7343C() {
        return this.zzf;
    }

    /* renamed from: D */
    public final int m7342D() {
        return this.zzf.size();
    }

    /* renamed from: E */
    public final long m7341E(int i) {
        return this.zzf.mo7041C(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001င��\u0002\u0014", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new C7403i2();
            }
            if (i2 == 4) {
                return new C7389h2(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
