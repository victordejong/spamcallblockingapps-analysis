package com.google.android.gms.internal.ads;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rd3.class */
public final class rd3 {

    /* renamed from: a */
    private final qd3 f28881a;

    private rd3(qd3 qd3Var) {
        se3.m11071b(qd3Var, "output");
        this.f28881a = qd3Var;
        qd3Var.f28439c = this;
    }

    /* renamed from: l */
    public static rd3 m11567l(qd3 qd3Var) {
        rd3 rd3Var = qd3Var.f28439c;
        return rd3Var != null ? rd3Var : new rd3(qd3Var);
    }

    /* renamed from: A */
    public final void m11589A(int i, int i2) {
        this.f28881a.mo11935i(i, (i2 >> 31) ^ (i2 + i2));
    }

    /* renamed from: B */
    public final void m11588B(int i, long j) {
        this.f28881a.mo11933k(i, (j >> 63) ^ (j + j));
    }

    /* renamed from: C */
    public final void m11587C(int i, Object obj, cg3 cg3Var) {
        mf3 mf3Var = (mf3) obj;
        od3 od3Var = (od3) this.f28881a;
        od3Var.mo11926r((i << 3) | 2);
        tc3 tc3Var = (tc3) mf3Var;
        int mo10721e = tc3Var.mo10721e();
        int i2 = mo10721e;
        if (mo10721e == -1) {
            i2 = cg3Var.mo11908a(tc3Var);
            tc3Var.mo10720f(i2);
        }
        od3Var.mo11926r(i2);
        cg3Var.mo11900i(mf3Var, od3Var.f28439c);
    }

    /* renamed from: D */
    public final void m11586D(int i, Object obj, cg3 cg3Var) {
        qd3 qd3Var = this.f28881a;
        qd3Var.mo11937g(i, 3);
        cg3Var.mo11900i((mf3) obj, qd3Var.f28439c);
        qd3Var.mo11937g(i, 4);
    }

    /* renamed from: E */
    public final void m11585E(int i) {
        this.f28881a.mo11937g(i, 3);
    }

    /* renamed from: F */
    public final void m11584F(int i) {
        this.f28881a.mo11937g(i, 4);
    }

    /* renamed from: G */
    public final void m11583G(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11936h(i, list.get(i2).intValue());
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += qd3.m11947A(list.get(i4).intValue());
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11927q(list.get(i5).intValue());
        }
    }

    /* renamed from: H */
    public final void m11582H(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11934j(i, list.get(i2).intValue());
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11925s(list.get(i5).intValue());
        }
    }

    /* renamed from: I */
    public final void m11581I(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11933k(i, list.get(i2).longValue());
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += qd3.m11945C(list.get(i4).longValue());
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11924t(list.get(i5).longValue());
        }
    }

    /* renamed from: J */
    public final void m11580J(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11933k(i, list.get(i2).longValue());
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += qd3.m11945C(list.get(i4).longValue());
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11924t(list.get(i5).longValue());
        }
    }

    /* renamed from: K */
    public final void m11579K(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11932l(i, list.get(i2).longValue());
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11923u(list.get(i5).longValue());
        }
    }

    /* renamed from: a */
    public final void m11578a(int i, List<Float> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11934j(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += 4;
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11925s(Float.floatToRawIntBits(list.get(i5).floatValue()));
        }
    }

    /* renamed from: b */
    public final void m11577b(int i, List<Double> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11932l(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += 8;
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11923u(Double.doubleToRawLongBits(list.get(i5).doubleValue()));
        }
    }

    /* renamed from: c */
    public final void m11576c(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11936h(i, list.get(i2).intValue());
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += qd3.m11947A(list.get(i4).intValue());
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11927q(list.get(i5).intValue());
        }
    }

    /* renamed from: d */
    public final void m11575d(int i, List<Boolean> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11931m(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3++;
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11928p(list.get(i5).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: e */
    public final void m11574e(int i, List<String> list) {
        if (!(list instanceof we3)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11930n(i, list.get(i2));
            }
            return;
        }
        we3 we3Var = (we3) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object mo9588Z = we3Var.mo9588Z(i3);
            if (mo9588Z instanceof String) {
                this.f28881a.mo11930n(i, (String) mo9588Z);
            } else {
                this.f28881a.mo11929o(i, (zzgex) mo9588Z);
            }
        }
    }

    /* renamed from: f */
    public final void m11573f(int i, List<zzgex> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f28881a.mo11929o(i, list.get(i2));
        }
    }

    /* renamed from: g */
    public final void m11572g(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11935i(i, list.get(i2).intValue());
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += qd3.m11946B(list.get(i4).intValue());
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11926r(list.get(i5).intValue());
        }
    }

    /* renamed from: h */
    public final void m11571h(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11934j(i, list.get(i2).intValue());
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11925s(list.get(i5).intValue());
        }
    }

    /* renamed from: i */
    public final void m11570i(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f28881a.mo11932l(i, list.get(i2).longValue());
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f28881a.mo11923u(list.get(i5).longValue());
        }
    }

    /* renamed from: j */
    public final void m11569j(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                qd3 qd3Var = this.f28881a;
                int intValue = list.get(i2).intValue();
                qd3Var.mo11935i(i, (intValue >> 31) ^ (intValue + intValue));
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = list.get(i4).intValue();
            i3 += qd3.m11946B((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            qd3 qd3Var2 = this.f28881a;
            int intValue3 = list.get(i5).intValue();
            qd3Var2.mo11926r((intValue3 >> 31) ^ (intValue3 + intValue3));
        }
    }

    /* renamed from: k */
    public final void m11568k(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                qd3 qd3Var = this.f28881a;
                long longValue = list.get(i2).longValue();
                qd3Var.mo11933k(i, (longValue >> 63) ^ (longValue + longValue));
            }
            return;
        }
        this.f28881a.mo11937g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = list.get(i4).longValue();
            i3 += qd3.m11945C((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.f28881a.mo11926r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            qd3 qd3Var2 = this.f28881a;
            long longValue3 = list.get(i5).longValue();
            qd3Var2.mo11924t((longValue3 >> 63) ^ (longValue3 + longValue3));
        }
    }

    /* renamed from: m */
    public final void m11566m(int i, int i2) {
        this.f28881a.mo11934j(i, i2);
    }

    /* renamed from: n */
    public final void m11565n(int i, long j) {
        this.f28881a.mo11933k(i, j);
    }

    /* renamed from: o */
    public final void m11564o(int i, long j) {
        this.f28881a.mo11932l(i, j);
    }

    /* renamed from: p */
    public final void m11563p(int i, float f) {
        this.f28881a.mo11934j(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: q */
    public final void m11562q(int i, double d) {
        this.f28881a.mo11932l(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: r */
    public final void m11561r(int i, int i2) {
        this.f28881a.mo11936h(i, i2);
    }

    /* renamed from: s */
    public final void m11560s(int i, long j) {
        this.f28881a.mo11933k(i, j);
    }

    /* renamed from: t */
    public final void m11559t(int i, int i2) {
        this.f28881a.mo11936h(i, i2);
    }

    /* renamed from: u */
    public final void m11558u(int i, long j) {
        this.f28881a.mo11932l(i, j);
    }

    /* renamed from: v */
    public final void m11557v(int i, int i2) {
        this.f28881a.mo11934j(i, i2);
    }

    /* renamed from: w */
    public final void m11556w(int i, boolean z) {
        this.f28881a.mo11931m(i, z);
    }

    /* renamed from: x */
    public final void m11555x(int i, String str) {
        this.f28881a.mo11930n(i, str);
    }

    /* renamed from: y */
    public final void m11554y(int i, zzgex zzgexVar) {
        this.f28881a.mo11929o(i, zzgexVar);
    }

    /* renamed from: z */
    public final void m11553z(int i, int i2) {
        this.f28881a.mo11935i(i, i2);
    }
}
