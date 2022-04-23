package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import java.util.List;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4;
/* renamed from: h.i.a.e.j.q.k3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/k3.class */
public final class C8655k3 implements AbstractC8677m7 {

    /* renamed from: a */
    public final AbstractC8632i3 f19799a;

    public C8655k3(AbstractC8632i3 i3Var) {
        C8591e4.m17686a(i3Var, "output");
        this.f19799a = i3Var;
        this.f19799a.f19761a = this;
    }

    /* renamed from: a */
    public static C8655k3 m17430a(AbstractC8632i3 i3Var) {
        C8655k3 k3Var = i3Var.f19761a;
        return k3Var != null ? k3Var : new C8655k3(i3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final int mo17386a() {
        return AbstractC8568c4.C8573e.f19638k;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17385a(int i) throws IOException {
        this.f19799a.mo17476a(i, 3);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17384a(int i, double d) throws IOException {
        this.f19799a.m17547a(i, d);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17383a(int i, float f) throws IOException {
        this.f19799a.m17546a(i, f);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17382a(int i, int i2) throws IOException {
        this.f19799a.m17517d(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17381a(int i, long j) throws IOException {
        this.f19799a.m17531b(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17380a(int i, AbstractC8736t2 t2Var) throws IOException {
        this.f19799a.mo17472a(i, t2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17379a(int i, Object obj) throws IOException {
        if (obj instanceof AbstractC8736t2) {
            this.f19799a.mo17464b(i, (AbstractC8736t2) obj);
        } else {
            this.f19799a.mo17465b(i, (AbstractC8648j5) obj);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17378a(int i, Object obj, AbstractC8797z5 z5Var) throws IOException {
        AbstractC8632i3 i3Var = this.f19799a;
        i3Var.mo17476a(i, 3);
        z5Var.mo16941a((AbstractC8797z5) ((AbstractC8648j5) obj), (AbstractC8677m7) i3Var.f19761a);
        i3Var.mo17476a(i, 4);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17377a(int i, String str) throws IOException {
        this.f19799a.mo17471a(i, str);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17376a(int i, List<AbstractC8736t2> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f19799a.mo17472a(i, list.get(i2));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17375a(int i, List<?> list, AbstractC8797z5 z5Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo17369b(i, list.get(i2), z5Var);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17374a(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17509f(list.get(i3).intValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.mo17477a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.mo17466b(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: a */
    public final void mo17373a(int i, boolean z) throws IOException {
        this.f19799a.mo17470a(i, z);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: b */
    public final void mo17372b(int i) throws IOException {
        this.f19799a.mo17476a(i, 4);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: b */
    public final void mo17371b(int i, int i2) throws IOException {
        this.f19799a.mo17466b(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: b */
    public final void mo17370b(int i, long j) throws IOException {
        this.f19799a.mo17458c(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: b */
    public final void mo17369b(int i, Object obj, AbstractC8797z5 z5Var) throws IOException {
        this.f19799a.mo17473a(i, (AbstractC8648j5) obj, z5Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: b */
    public final void mo17368b(int i, List<String> list) throws IOException {
        if (list instanceof AbstractC8738t4) {
            AbstractC8738t4 t4Var = (AbstractC8738t4) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object a = t4Var.mo17118a(i2);
                if (a instanceof String) {
                    this.f19799a.mo17471a(i, (String) a);
                } else {
                    this.f19799a.mo17472a(i, (AbstractC8736t2) a);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f19799a.mo17471a(i, list.get(i3));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: b */
    public final void mo17367b(int i, List<?> list, AbstractC8797z5 z5Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo17378a(i, list.get(i2), z5Var);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: b */
    public final void mo17366b(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17513d(list.get(i3).longValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.mo17469a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.mo17475a(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: c */
    public final void mo17365c(int i, int i2) throws IOException {
        this.f19799a.mo17459c(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: c */
    public final void mo17364c(int i, long j) throws IOException {
        this.f19799a.mo17475a(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: c */
    public final void mo17363c(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17497i(list.get(i3).intValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.mo17455d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.mo17454e(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: d */
    public final void mo17362d(int i, int i2) throws IOException {
        this.f19799a.mo17454e(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: d */
    public final void mo17361d(int i, long j) throws IOException {
        this.f19799a.mo17458c(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: d */
    public final void mo17360d(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17506f(list.get(i3).longValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.m17526b(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.m17531b(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: e */
    public final void mo17359e(int i, int i2) throws IOException {
        this.f19799a.mo17454e(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: e */
    public final void mo17358e(int i, long j) throws IOException {
        this.f19799a.mo17475a(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: e */
    public final void mo17357e(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17501h(list.get(i3).intValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.m17521c(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.m17517d(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: f */
    public final void mo17356f(int i, int i2) throws IOException {
        this.f19799a.mo17466b(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: f */
    public final void mo17355f(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17524b(list.get(i3).booleanValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.m17537a(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.mo17470a(i, list.get(i5).booleanValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: g */
    public final void mo17354g(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17492k(list.get(i3).intValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.mo17477a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.mo17466b(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: h */
    public final void mo17353h(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17498h(list.get(i3).longValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.mo17457c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.mo17458c(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: i */
    public final void mo17352i(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17505g(list.get(i3).intValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.mo17467b(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.mo17459c(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: j */
    public final void mo17351j(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17494j(list.get(i3).intValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.mo17455d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.mo17454e(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: k */
    public final void mo17350k(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17502g(list.get(i3).longValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.mo17457c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.mo17458c(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: l */
    public final void mo17349l(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17510e(list.get(i3).longValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.mo17469a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.mo17475a(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: m */
    public final void mo17348m(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17535b(list.get(i3).doubleValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.m17549a(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.m17547a(i, list.get(i5).doubleValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7
    /* renamed from: n */
    public final void mo17347n(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f19799a.mo17476a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8632i3.m17534b(list.get(i3).floatValue());
            }
            this.f19799a.mo17467b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f19799a.m17548a(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f19799a.m17546a(i, list.get(i5).floatValue());
        }
    }
}
