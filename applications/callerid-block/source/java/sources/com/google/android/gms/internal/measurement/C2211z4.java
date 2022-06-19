package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.z4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/z4.class */
final class C2211z4 {

    /* renamed from: a */
    private final y4 f9854a;

    private C2211z4(y4 y4Var) {
        C2202x5.m4134b(y4Var, "output");
        this.f9854a = y4Var;
        y4Var.a = this;
    }

    /* renamed from: l */
    public static C2211z4 m4093l(y4 y4Var) {
        C2211z4 c2211z4 = y4Var.a;
        return c2211z4 != null ? c2211z4 : new C2211z4(y4Var);
    }

    /* renamed from: A */
    public final void m4115A(int i, int i2) {
        this.f9854a.i(i, (i2 >> 31) ^ (i2 + i2));
    }

    /* renamed from: B */
    public final void m4114B(int i, long j) {
        this.f9854a.k(i, (j >> 63) ^ (j + j));
    }

    /* renamed from: C */
    public final void m4113C(int i, Object obj, AbstractC2099c7 abstractC2099c7) {
        j4 j4Var = (q6) obj;
        x4 x4Var = this.f9854a;
        x4Var.r((i << 3) | 2);
        j4 j4Var2 = j4Var;
        int g = j4Var2.g();
        int i2 = g;
        if (g == -1) {
            i2 = abstractC2099c7.m4416b(j4Var2);
            j4Var2.h(i2);
        }
        x4Var.r(i2);
        abstractC2099c7.m4410h(j4Var, ((y4) x4Var).a);
    }

    /* renamed from: D */
    public final void m4112D(int i, Object obj, AbstractC2099c7 abstractC2099c7) {
        y4 y4Var = this.f9854a;
        y4Var.g(i, 3);
        abstractC2099c7.m4410h((q6) obj, y4Var.a);
        y4Var.g(i, 4);
    }

    /* renamed from: E */
    public final void m4111E(int i) {
        this.f9854a.g(i, 3);
    }

    /* renamed from: F */
    public final void m4110F(int i) {
        this.f9854a.g(i, 4);
    }

    /* renamed from: G */
    public final void m4109G(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.h(i, list.get(i2).intValue());
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += y4.z(list.get(i4).intValue());
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.q(list.get(i5).intValue());
        }
    }

    /* renamed from: H */
    public final void m4108H(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.j(i, list.get(i2).intValue());
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.s(list.get(i5).intValue());
        }
    }

    /* renamed from: I */
    public final void m4107I(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.k(i, list.get(i2).longValue());
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += y4.B(list.get(i4).longValue());
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.t(list.get(i5).longValue());
        }
    }

    /* renamed from: J */
    public final void m4106J(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.k(i, list.get(i2).longValue());
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += y4.B(list.get(i4).longValue());
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.t(list.get(i5).longValue());
        }
    }

    /* renamed from: K */
    public final void m4105K(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.l(i, list.get(i2).longValue());
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.u(list.get(i5).longValue());
        }
    }

    /* renamed from: a */
    public final void m4104a(int i, List<Float> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.j(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += 4;
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.s(Float.floatToRawIntBits(list.get(i5).floatValue()));
        }
    }

    /* renamed from: b */
    public final void m4103b(int i, List<Double> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.l(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += 8;
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.u(Double.doubleToRawLongBits(list.get(i5).doubleValue()));
        }
    }

    /* renamed from: c */
    public final void m4102c(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.h(i, list.get(i2).intValue());
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += y4.z(list.get(i4).intValue());
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.q(list.get(i5).intValue());
        }
    }

    /* renamed from: d */
    public final void m4101d(int i, List<Boolean> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.m(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3++;
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.p(list.get(i5).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: e */
    public final void m4100e(int i, List<String> list) {
        if (!(list instanceof AbstractC2092b6)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.n(i, list.get(i2));
            }
            return;
        }
        AbstractC2092b6 abstractC2092b6 = (AbstractC2092b6) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object m4429a0 = abstractC2092b6.m4429a0(i3);
            if (m4429a0 instanceof String) {
                this.f9854a.n(i, (String) m4429a0);
            } else {
                this.f9854a.o(i, (zzgr) m4429a0);
            }
        }
    }

    /* renamed from: f */
    public final void m4099f(int i, List<zzgr> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f9854a.o(i, list.get(i2));
        }
    }

    /* renamed from: g */
    public final void m4098g(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.i(i, list.get(i2).intValue());
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += y4.A(list.get(i4).intValue());
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.r(list.get(i5).intValue());
        }
    }

    /* renamed from: h */
    public final void m4097h(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.j(i, list.get(i2).intValue());
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.s(list.get(i5).intValue());
        }
    }

    /* renamed from: i */
    public final void m4096i(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9854a.l(i, list.get(i2).longValue());
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9854a.u(list.get(i5).longValue());
        }
    }

    /* renamed from: j */
    public final void m4095j(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                y4 y4Var = this.f9854a;
                int intValue = list.get(i2).intValue();
                y4Var.i(i, (intValue >> 31) ^ (intValue + intValue));
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = list.get(i4).intValue();
            i3 += y4.A((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            y4 y4Var2 = this.f9854a;
            int intValue3 = list.get(i5).intValue();
            y4Var2.r((intValue3 >> 31) ^ (intValue3 + intValue3));
        }
    }

    /* renamed from: k */
    public final void m4094k(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                y4 y4Var = this.f9854a;
                long longValue = list.get(i2).longValue();
                y4Var.k(i, (longValue >> 63) ^ (longValue + longValue));
            }
            return;
        }
        this.f9854a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = list.get(i4).longValue();
            i3 += y4.B((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.f9854a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            y4 y4Var2 = this.f9854a;
            long longValue3 = list.get(i5).longValue();
            y4Var2.t((longValue3 >> 63) ^ (longValue3 + longValue3));
        }
    }

    /* renamed from: m */
    public final void m4092m(int i, int i2) {
        this.f9854a.j(i, i2);
    }

    /* renamed from: n */
    public final void m4091n(int i, long j) {
        this.f9854a.k(i, j);
    }

    /* renamed from: o */
    public final void m4090o(int i, long j) {
        this.f9854a.l(i, j);
    }

    /* renamed from: p */
    public final void m4089p(int i, float f) {
        this.f9854a.j(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: q */
    public final void m4088q(int i, double d) {
        this.f9854a.l(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: r */
    public final void m4087r(int i, int i2) {
        this.f9854a.h(i, i2);
    }

    /* renamed from: s */
    public final void m4086s(int i, long j) {
        this.f9854a.k(i, j);
    }

    /* renamed from: t */
    public final void m4085t(int i, int i2) {
        this.f9854a.h(i, i2);
    }

    /* renamed from: u */
    public final void m4084u(int i, long j) {
        this.f9854a.l(i, j);
    }

    /* renamed from: v */
    public final void m4083v(int i, int i2) {
        this.f9854a.j(i, i2);
    }

    /* renamed from: w */
    public final void m4082w(int i, boolean z) {
        this.f9854a.m(i, z);
    }

    /* renamed from: x */
    public final void m4081x(int i, String str) {
        this.f9854a.n(i, str);
    }

    /* renamed from: y */
    public final void m4080y(int i, zzgr zzgrVar) {
        this.f9854a.o(i, zzgrVar);
    }

    /* renamed from: z */
    public final void m4079z(int i, int i2) {
        this.f9854a.i(i, i2);
    }
}
