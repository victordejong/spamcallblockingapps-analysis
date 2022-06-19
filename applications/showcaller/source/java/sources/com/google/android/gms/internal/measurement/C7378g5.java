package com.google.android.gms.internal.measurement;

import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.g5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/g5.class */
final class C7378g5 {

    /* renamed from: a */
    private final AbstractC7364f5 f34485a;

    private C7378g5(AbstractC7364f5 abstractC7364f5) {
        C7365f6.m7502b(abstractC7364f5, "output");
        this.f34485a = abstractC7364f5;
        abstractC7364f5.f34430c = this;
    }

    /* renamed from: l */
    public static C7378g5 m7401l(AbstractC7364f5 abstractC7364f5) {
        C7378g5 c7378g5 = abstractC7364f5.f34430c;
        return c7378g5 != null ? c7378g5 : new C7378g5(abstractC7364f5);
    }

    /* renamed from: A */
    public final void m7423A(int i, int i2) {
        this.f34485a.mo7521i(i, (i2 >> 31) ^ (i2 + i2));
    }

    /* renamed from: B */
    public final void m7422B(int i, long j) {
        this.f34485a.mo7519k(i, (j >> 63) ^ (j + j));
    }

    /* renamed from: C */
    public final void m7421C(int i, Object obj, AbstractC7436k7 abstractC7436k7) {
        AbstractC7623y6 abstractC7623y6 = (AbstractC7623y6) obj;
        C7350e5 c7350e5 = (C7350e5) this.f34485a;
        c7350e5.mo7512r((i << 3) | 2);
        AbstractC7489o4 abstractC7489o4 = (AbstractC7489o4) abstractC7623y6;
        int mo6770j = abstractC7489o4.mo6770j();
        int i2 = mo6770j;
        if (mo6770j == -1) {
            i2 = abstractC7436k7.mo7209a(abstractC7489o4);
            abstractC7489o4.mo6769k(i2);
        }
        c7350e5.mo7512r(i2);
        abstractC7436k7.mo7202g(abstractC7623y6, c7350e5.f34430c);
    }

    /* renamed from: D */
    public final void m7420D(int i, Object obj, AbstractC7436k7 abstractC7436k7) {
        AbstractC7364f5 abstractC7364f5 = this.f34485a;
        abstractC7364f5.mo7523g(i, 3);
        abstractC7436k7.mo7202g((AbstractC7623y6) obj, abstractC7364f5.f34430c);
        abstractC7364f5.mo7523g(i, 4);
    }

    /* renamed from: E */
    public final void m7419E(int i) {
        this.f34485a.mo7523g(i, 3);
    }

    /* renamed from: F */
    public final void m7418F(int i) {
        this.f34485a.mo7523g(i, 4);
    }

    /* renamed from: G */
    public final void m7417G(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7522h(i, list.get(i2).intValue());
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC7364f5.m7504z(list.get(i4).intValue());
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7513q(list.get(i5).intValue());
        }
    }

    /* renamed from: H */
    public final void m7416H(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7520j(i, list.get(i2).intValue());
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7511s(list.get(i5).intValue());
        }
    }

    /* renamed from: I */
    public final void m7415I(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7519k(i, list.get(i2).longValue());
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC7364f5.m7532B(list.get(i4).longValue());
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7510t(list.get(i5).longValue());
        }
    }

    /* renamed from: J */
    public final void m7414J(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7519k(i, list.get(i2).longValue());
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC7364f5.m7532B(list.get(i4).longValue());
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7510t(list.get(i5).longValue());
        }
    }

    /* renamed from: K */
    public final void m7413K(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7518l(i, list.get(i2).longValue());
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7509u(list.get(i5).longValue());
        }
    }

    /* renamed from: a */
    public final void m7412a(int i, List<Float> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7520j(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += 4;
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7511s(Float.floatToRawIntBits(list.get(i5).floatValue()));
        }
    }

    /* renamed from: b */
    public final void m7411b(int i, List<Double> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7518l(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += 8;
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7509u(Double.doubleToRawLongBits(list.get(i5).doubleValue()));
        }
    }

    /* renamed from: c */
    public final void m7410c(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7522h(i, list.get(i2).intValue());
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC7364f5.m7504z(list.get(i4).intValue());
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7513q(list.get(i5).intValue());
        }
    }

    /* renamed from: d */
    public final void m7409d(int i, List<Boolean> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7517m(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3++;
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7514p(list.get(i5).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: e */
    public final void m7408e(int i, List<String> list) {
        if (!(list instanceof AbstractC7421j6)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7516n(i, list.get(i2));
            }
            return;
        }
        AbstractC7421j6 abstractC7421j6 = (AbstractC7421j6) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object mo7245Z = abstractC7421j6.mo7245Z(i3);
            if (mo7245Z instanceof String) {
                this.f34485a.mo7516n(i, (String) mo7245Z);
            } else {
                this.f34485a.mo7515o(i, (zzgr) mo7245Z);
            }
        }
    }

    /* renamed from: f */
    public final void m7407f(int i, List<zzgr> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f34485a.mo7515o(i, list.get(i2));
        }
    }

    /* renamed from: g */
    public final void m7406g(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7521i(i, list.get(i2).intValue());
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC7364f5.m7533A(list.get(i4).intValue());
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7512r(list.get(i5).intValue());
        }
    }

    /* renamed from: h */
    public final void m7405h(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7520j(i, list.get(i2).intValue());
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7511s(list.get(i5).intValue());
        }
    }

    /* renamed from: i */
    public final void m7404i(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f34485a.mo7518l(i, list.get(i2).longValue());
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f34485a.mo7509u(list.get(i5).longValue());
        }
    }

    /* renamed from: j */
    public final void m7403j(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                AbstractC7364f5 abstractC7364f5 = this.f34485a;
                int intValue = list.get(i2).intValue();
                abstractC7364f5.mo7521i(i, (intValue >> 31) ^ (intValue + intValue));
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = list.get(i4).intValue();
            i3 += AbstractC7364f5.m7533A((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            AbstractC7364f5 abstractC7364f52 = this.f34485a;
            int intValue3 = list.get(i5).intValue();
            abstractC7364f52.mo7512r((intValue3 >> 31) ^ (intValue3 + intValue3));
        }
    }

    /* renamed from: k */
    public final void m7402k(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                AbstractC7364f5 abstractC7364f5 = this.f34485a;
                long longValue = list.get(i2).longValue();
                abstractC7364f5.mo7519k(i, (longValue >> 63) ^ (longValue + longValue));
            }
            return;
        }
        this.f34485a.mo7523g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = list.get(i4).longValue();
            i3 += AbstractC7364f5.m7532B((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.f34485a.mo7512r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            AbstractC7364f5 abstractC7364f52 = this.f34485a;
            long longValue3 = list.get(i5).longValue();
            abstractC7364f52.mo7510t((longValue3 >> 63) ^ (longValue3 + longValue3));
        }
    }

    /* renamed from: m */
    public final void m7400m(int i, int i2) {
        this.f34485a.mo7520j(i, i2);
    }

    /* renamed from: n */
    public final void m7399n(int i, long j) {
        this.f34485a.mo7519k(i, j);
    }

    /* renamed from: o */
    public final void m7398o(int i, long j) {
        this.f34485a.mo7518l(i, j);
    }

    /* renamed from: p */
    public final void m7397p(int i, float f) {
        this.f34485a.mo7520j(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: q */
    public final void m7396q(int i, double d) {
        this.f34485a.mo7518l(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: r */
    public final void m7395r(int i, int i2) {
        this.f34485a.mo7522h(i, i2);
    }

    /* renamed from: s */
    public final void m7394s(int i, long j) {
        this.f34485a.mo7519k(i, j);
    }

    /* renamed from: t */
    public final void m7393t(int i, int i2) {
        this.f34485a.mo7522h(i, i2);
    }

    /* renamed from: u */
    public final void m7392u(int i, long j) {
        this.f34485a.mo7518l(i, j);
    }

    /* renamed from: v */
    public final void m7391v(int i, int i2) {
        this.f34485a.mo7520j(i, i2);
    }

    /* renamed from: w */
    public final void m7390w(int i, boolean z) {
        this.f34485a.mo7517m(i, z);
    }

    /* renamed from: x */
    public final void m7389x(int i, String str) {
        this.f34485a.mo7516n(i, str);
    }

    /* renamed from: y */
    public final void m7388y(int i, zzgr zzgrVar) {
        this.f34485a.mo7515o(i, zzgrVar);
    }

    /* renamed from: z */
    public final void m7387z(int i, int i2) {
        this.f34485a.mo7521i(i, i2);
    }
}
