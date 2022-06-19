package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xb2.class */
final class xb2 {

    /* renamed from: a */
    private final wb2 f9099a;

    private xb2(wb2 wb2Var) {
        xc2.m4917b(wb2Var, "output");
        this.f9099a = wb2Var;
        wb2Var.a = this;
    }

    /* renamed from: l */
    public static xb2 m4933l(wb2 wb2Var) {
        xb2 xb2Var = wb2Var.a;
        return xb2Var != null ? xb2Var : new xb2(wb2Var);
    }

    /* renamed from: A */
    public final void m4955A(int i, int i2) {
        this.f9099a.i(i, (i2 >> 31) ^ (i2 + i2));
    }

    /* renamed from: B */
    public final void m4954B(int i, long j) {
        this.f9099a.k(i, (j >> 63) ^ (j + j));
    }

    /* renamed from: C */
    public final void m4953C(int i, Object obj, he2 he2Var) {
        db2 db2Var = (qd2) obj;
        vb2 vb2Var = this.f9099a;
        vb2Var.r((i << 3) | 2);
        db2 db2Var2 = db2Var;
        int a = db2Var2.a();
        int i2 = a;
        if (a == -1) {
            i2 = he2Var.m7288b(db2Var2);
            db2Var2.h(i2);
        }
        vb2Var.r(i2);
        he2Var.m7282h(db2Var, ((wb2) vb2Var).a);
    }

    /* renamed from: D */
    public final void m4952D(int i, Object obj, he2 he2Var) {
        wb2 wb2Var = this.f9099a;
        wb2Var.g(i, 3);
        he2Var.m7282h((qd2) obj, wb2Var.a);
        wb2Var.g(i, 4);
    }

    /* renamed from: E */
    public final void m4951E(int i) {
        this.f9099a.g(i, 3);
    }

    /* renamed from: F */
    public final void m4950F(int i) {
        this.f9099a.g(i, 4);
    }

    /* renamed from: G */
    public final void m4949G(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.h(i, list.get(i2).intValue());
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += wb2.z(list.get(i4).intValue());
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.q(list.get(i5).intValue());
        }
    }

    /* renamed from: H */
    public final void m4948H(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.j(i, list.get(i2).intValue());
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.s(list.get(i5).intValue());
        }
    }

    /* renamed from: I */
    public final void m4947I(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.k(i, list.get(i2).longValue());
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += wb2.B(list.get(i4).longValue());
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.t(list.get(i5).longValue());
        }
    }

    /* renamed from: J */
    public final void m4946J(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.k(i, list.get(i2).longValue());
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += wb2.B(list.get(i4).longValue());
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.t(list.get(i5).longValue());
        }
    }

    /* renamed from: K */
    public final void m4945K(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.l(i, list.get(i2).longValue());
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.u(list.get(i5).longValue());
        }
    }

    /* renamed from: a */
    public final void m4944a(int i, List<Float> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.j(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += 4;
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.s(Float.floatToRawIntBits(list.get(i5).floatValue()));
        }
    }

    /* renamed from: b */
    public final void m4943b(int i, List<Double> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.l(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += 8;
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.u(Double.doubleToRawLongBits(list.get(i5).doubleValue()));
        }
    }

    /* renamed from: c */
    public final void m4942c(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.h(i, list.get(i2).intValue());
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += wb2.z(list.get(i4).intValue());
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.q(list.get(i5).intValue());
        }
    }

    /* renamed from: d */
    public final void m4941d(int i, List<Boolean> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.m(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3++;
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.p(list.get(i5).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: e */
    public final void m4940e(int i, List<String> list) {
        if (!(list instanceof ad2)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.n(i, list.get(i2));
            }
            return;
        }
        ad2 ad2Var = (ad2) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object m8147a0 = ad2Var.m8147a0(i3);
            if (m8147a0 instanceof String) {
                this.f9099a.n(i, (String) m8147a0);
            } else {
                this.f9099a.o(i, (zzesf) m8147a0);
            }
        }
    }

    /* renamed from: f */
    public final void m4939f(int i, List<zzesf> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f9099a.o(i, list.get(i2));
        }
    }

    /* renamed from: g */
    public final void m4938g(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.i(i, list.get(i2).intValue());
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += wb2.A(list.get(i4).intValue());
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.r(list.get(i5).intValue());
        }
    }

    /* renamed from: h */
    public final void m4937h(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.j(i, list.get(i2).intValue());
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.s(list.get(i5).intValue());
        }
    }

    /* renamed from: i */
    public final void m4936i(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f9099a.l(i, list.get(i2).longValue());
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f9099a.u(list.get(i5).longValue());
        }
    }

    /* renamed from: j */
    public final void m4935j(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                wb2 wb2Var = this.f9099a;
                int intValue = list.get(i2).intValue();
                wb2Var.i(i, (intValue >> 31) ^ (intValue + intValue));
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = list.get(i4).intValue();
            i3 += wb2.A((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            wb2 wb2Var2 = this.f9099a;
            int intValue3 = list.get(i5).intValue();
            wb2Var2.r((intValue3 >> 31) ^ (intValue3 + intValue3));
        }
    }

    /* renamed from: k */
    public final void m4934k(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                wb2 wb2Var = this.f9099a;
                long longValue = list.get(i2).longValue();
                wb2Var.k(i, (longValue >> 63) ^ (longValue + longValue));
            }
            return;
        }
        this.f9099a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = list.get(i4).longValue();
            i3 += wb2.B((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.f9099a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            wb2 wb2Var2 = this.f9099a;
            long longValue3 = list.get(i5).longValue();
            wb2Var2.t((longValue3 >> 63) ^ (longValue3 + longValue3));
        }
    }

    /* renamed from: m */
    public final void m4932m(int i, int i2) {
        this.f9099a.j(i, i2);
    }

    /* renamed from: n */
    public final void m4931n(int i, long j) {
        this.f9099a.k(i, j);
    }

    /* renamed from: o */
    public final void m4930o(int i, long j) {
        this.f9099a.l(i, j);
    }

    /* renamed from: p */
    public final void m4929p(int i, float f) {
        this.f9099a.j(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: q */
    public final void m4928q(int i, double d) {
        this.f9099a.l(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: r */
    public final void m4927r(int i, int i2) {
        this.f9099a.h(i, i2);
    }

    /* renamed from: s */
    public final void m4926s(int i, long j) {
        this.f9099a.k(i, j);
    }

    /* renamed from: t */
    public final void m4925t(int i, int i2) {
        this.f9099a.h(i, i2);
    }

    /* renamed from: u */
    public final void m4924u(int i, long j) {
        this.f9099a.l(i, j);
    }

    /* renamed from: v */
    public final void m4923v(int i, int i2) {
        this.f9099a.j(i, i2);
    }

    /* renamed from: w */
    public final void m4922w(int i, boolean z) {
        this.f9099a.m(i, z);
    }

    /* renamed from: x */
    public final void m4921x(int i, String str) {
        this.f9099a.n(i, str);
    }

    /* renamed from: y */
    public final void m4920y(int i, zzesf zzesfVar) {
        this.f9099a.o(i, zzesfVar);
    }

    /* renamed from: z */
    public final void m4919z(int i, int i2) {
        this.f9099a.i(i, i2);
    }
}
