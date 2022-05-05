package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import java.util.List;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
/* renamed from: h.i.a.e.j.j.v0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/v0.class */
public final class C7937v0 implements AbstractC7962y4 {

    /* renamed from: a */
    public final AbstractC7918t0 f18616a;

    public C7937v0(AbstractC7918t0 t0Var) {
        C7891p1.m19103a(t0Var, "output");
        this.f18616a = t0Var;
        this.f18616a.f18578a = this;
    }

    /* renamed from: a */
    public static C7937v0 m18858a(AbstractC7918t0 t0Var) {
        C7937v0 v0Var = t0Var.f18578a;
        return v0Var != null ? v0Var : new C7937v0(t0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final int mo18789a() {
        return AbstractC7869n1.C7874e.f18438k;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18788a(int i) throws IOException {
        this.f18616a.mo18918a(i, 3);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18787a(int i, double d) throws IOException {
        this.f18616a.m18989a(i, d);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18786a(int i, float f) throws IOException {
        this.f18616a.m18988a(i, f);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18785a(int i, int i2) throws IOException {
        this.f18616a.mo18895e(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18784a(int i, long j) throws IOException {
        this.f18616a.m18973b(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18783a(int i, AbstractC7791e0 e0Var) throws IOException {
        this.f18616a.mo18916a(i, e0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18782a(int i, Object obj) throws IOException {
        if (obj instanceof AbstractC7791e0) {
            this.f18616a.mo18906b(i, (AbstractC7791e0) obj);
        } else {
            this.f18616a.mo18905b(i, (AbstractC7925t2) obj);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18781a(int i, Object obj, AbstractC7849k3 k3Var) throws IOException {
        this.f18616a.mo18914a(i, (AbstractC7925t2) obj, k3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18780a(int i, String str) throws IOException {
        this.f18616a.mo18913a(i, str);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18779a(int i, List<AbstractC7791e0> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f18616a.mo18916a(i, list.get(i2));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18778a(int i, List<?> list, AbstractC7849k3 k3Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo18772b(i, list.get(i2), k3Var);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18777a(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18954e(list.get(i3).intValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.mo18919a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.mo18907b(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: a */
    public final void mo18776a(int i, boolean z) throws IOException {
        this.f18616a.mo18912a(i, z);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: b */
    public final void mo18775b(int i) throws IOException {
        this.f18616a.mo18918a(i, 4);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: b */
    public final void mo18774b(int i, int i2) throws IOException {
        this.f18616a.mo18900c(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: b */
    public final void mo18773b(int i, long j) throws IOException {
        this.f18616a.mo18899c(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: b */
    public final void mo18772b(int i, Object obj, AbstractC7849k3 k3Var) throws IOException {
        AbstractC7918t0 t0Var = this.f18616a;
        t0Var.mo18918a(i, 3);
        k3Var.mo18796a((AbstractC7849k3) ((AbstractC7925t2) obj), (AbstractC7962y4) t0Var.f18578a);
        t0Var.mo18918a(i, 4);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: b */
    public final void mo18771b(int i, List<String> list) throws IOException {
        if (list instanceof AbstractC7785d2) {
            AbstractC7785d2 d2Var = (AbstractC7785d2) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object a = d2Var.mo19378a(i2);
                if (a instanceof String) {
                    this.f18616a.mo18913a(i, (String) a);
                } else {
                    this.f18616a.mo18916a(i, (AbstractC7791e0) a);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f18616a.mo18913a(i, list.get(i3));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: b */
    public final void mo18770b(int i, List<?> list, AbstractC7849k3 k3Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo18781a(i, list.get(i2), k3Var);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: b */
    public final void mo18769b(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18955d(list.get(i3).longValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.mo18911a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.mo18917a(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: c */
    public final void mo18768c(int i, int i2) throws IOException {
        this.f18616a.m18959d(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: c */
    public final void mo18767c(int i, long j) throws IOException {
        this.f18616a.mo18917a(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: c */
    public final void mo18766c(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18943h(list.get(i3).intValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.mo18896d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.mo18895e(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: d */
    public final void mo18765d(int i, int i2) throws IOException {
        this.f18616a.mo18907b(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: d */
    public final void mo18764d(int i, long j) throws IOException {
        this.f18616a.mo18899c(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: d */
    public final void mo18763d(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18948f(list.get(i3).longValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.m18968b(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.m18973b(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: e */
    public final void mo18762e(int i, int i2) throws IOException {
        this.f18616a.mo18907b(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: e */
    public final void mo18761e(int i, long j) throws IOException {
        this.f18616a.mo18917a(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: e */
    public final void mo18760e(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18947g(list.get(i3).intValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.m18963c(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.m18959d(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: f */
    public final void mo18759f(int i, int i2) throws IOException {
        this.f18616a.mo18895e(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: f */
    public final void mo18758f(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18966b(list.get(i3).booleanValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.m18979a(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.mo18912a(i, list.get(i5).booleanValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: g */
    public final void mo18757g(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18936j(list.get(i3).intValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.mo18919a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.mo18907b(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: h */
    public final void mo18756h(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18940h(list.get(i3).longValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.mo18898c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.mo18899c(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: i */
    public final void mo18755i(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18951f(list.get(i3).intValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.mo18908b(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.mo18900c(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: j */
    public final void mo18754j(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18939i(list.get(i3).intValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.mo18896d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.mo18895e(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: k */
    public final void mo18753k(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18944g(list.get(i3).longValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.mo18898c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.mo18899c(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: l */
    public final void mo18752l(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18952e(list.get(i3).longValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.mo18911a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.mo18917a(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: m */
    public final void mo18751m(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18977b(list.get(i3).doubleValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.m18991a(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.m18989a(i, list.get(i5).doubleValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4
    /* renamed from: n */
    public final void mo18750n(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f18616a.mo18918a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7918t0.m18976b(list.get(i3).floatValue());
            }
            this.f18616a.mo18908b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18616a.m18990a(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18616a.m18988a(i, list.get(i5).floatValue());
        }
    }
}
