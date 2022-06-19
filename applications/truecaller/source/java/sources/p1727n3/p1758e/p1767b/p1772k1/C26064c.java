package p1727n3.p1758e.p1767b.p1772k1;

import android.graphics.Rect;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Rational;
import android.util.Size;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import n3.e.b.j1.r1;
import n3.e.b.j1.u;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.AbstractC25926h0;
import p1727n3.p1758e.p1767b.AbstractC25929i0;
import p1727n3.p1758e.p1767b.AbstractC26075l0;
import p1727n3.p1758e.p1767b.C25927h1;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26010s1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26047w;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26051x;
import p1727n3.p1758e.p1767b.p1768j1.C26045v;
/* renamed from: n3.e.b.k1.c */
/* loaded from: classes-dex2jar.jar:n3/e/b/k1/c.class */
public final class C26064c implements AbstractC25926h0 {

    /* renamed from: a */
    public AbstractC25938b0 f72734a;

    /* renamed from: b */
    public final LinkedHashSet<AbstractC25938b0> f72735b;

    /* renamed from: c */
    public final AbstractC26051x f72736c;

    /* renamed from: d */
    public final AbstractC26010s1 f72737d;

    /* renamed from: e */
    public final C26066b f72738e;

    /* renamed from: g */
    public C25927h1 f72740g;

    /* renamed from: f */
    public final List<AbstractC25921g1> f72739f = new ArrayList();

    /* renamed from: h */
    public u f72741h = C26045v.f72718a;

    /* renamed from: i */
    public final Object f72742i = new Object();

    /* renamed from: j */
    public boolean f72743j = true;

    /* renamed from: k */
    public AbstractC25968j0 f72744k = null;

    /* renamed from: n3.e.b.k1.c$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/k1/c$a.class */
    public static final class C26065a extends Exception {
        public C26065a(String str) {
            super(str);
        }
    }

    /* renamed from: n3.e.b.k1.c$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/k1/c$b.class */
    public static final class C26066b {

        /* renamed from: a */
        public final List<String> f72745a = new ArrayList();

        public C26066b(LinkedHashSet<AbstractC25938b0> linkedHashSet) {
            Iterator<AbstractC25938b0> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                this.f72745a.add(it.next().m2878d().m2766a());
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof C26066b) {
                return this.f72745a.equals(((C26066b) obj).f72745a);
            }
            return false;
        }

        public int hashCode() {
            return this.f72745a.hashCode() * 53;
        }
    }

    /* renamed from: n3.e.b.k1.c$c */
    /* loaded from: classes-dex2jar.jar:n3/e/b/k1/c$c.class */
    public static class C26067c {

        /* renamed from: a */
        public r1<?> f72746a;

        /* renamed from: b */
        public r1<?> f72747b;

        public C26067c(r1<?> r1Var, r1<?> r1Var2) {
            this.f72746a = r1Var;
            this.f72747b = r1Var2;
        }
    }

    public C26064c(LinkedHashSet<AbstractC25938b0> linkedHashSet, AbstractC26051x abstractC26051x, AbstractC26010s1 abstractC26010s1) {
        this.f72734a = linkedHashSet.iterator().next();
        LinkedHashSet<AbstractC25938b0> linkedHashSet2 = new LinkedHashSet<>(linkedHashSet);
        this.f72735b = linkedHashSet2;
        this.f72738e = new C26066b(linkedHashSet2);
        this.f72736c = abstractC26051x;
        this.f72737d = abstractC26010s1;
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25926h0
    /* renamed from: a */
    public AbstractC26075l0 mo2761a() {
        return this.f72734a.m2878d();
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25926h0
    /* renamed from: b */
    public AbstractC25929i0 mo2760b() {
        return this.f72734a.m2876g();
    }

    /* renamed from: c */
    public void m2759c(Collection<AbstractC25921g1> collection) throws C26065a {
        synchronized (this.f72742i) {
            ArrayList arrayList = new ArrayList();
            for (AbstractC25921g1 abstractC25921g1 : collection) {
                if (this.f72739f.contains(abstractC25921g1)) {
                    C26103y0.m2724a("CameraUseCaseAdapter", "Attempting to attach already attached UseCase", null);
                } else {
                    arrayList.add(abstractC25921g1);
                }
            }
            AbstractC26010s1 abstractC26010s1 = this.f72741h.q;
            AbstractC26010s1 abstractC26010s12 = this.f72737d;
            HashMap hashMap = new HashMap();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                AbstractC25921g1 abstractC25921g12 = (AbstractC25921g1) it.next();
                hashMap.put(abstractC25921g12, new C26067c(abstractC25921g12.mo2903c(false, abstractC26010s1), abstractC25921g12.mo2903c(true, abstractC26010s12)));
            }
            try {
                Map<AbstractC25921g1, Size> m2757j = m2757j(this.f72734a.m2878d(), arrayList, this.f72739f, hashMap);
                m2753n(m2757j, collection);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    AbstractC25921g1 abstractC25921g13 = (AbstractC25921g1) it2.next();
                    C26067c c26067c = (C26067c) hashMap.get(abstractC25921g13);
                    abstractC25921g13.m2897i(this.f72734a, c26067c.f72746a, c26067c.f72747b);
                    Size size = (Size) ((HashMap) m2757j).get(abstractC25921g13);
                    Objects.requireNonNull(size);
                    abstractC25921g13.f72506g = abstractC25921g13.mo2893m(size);
                }
                this.f72739f.addAll(arrayList);
                if (this.f72743j) {
                    this.f72734a.m2875h(arrayList);
                }
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    ((AbstractC25921g1) it3.next()).m2898h();
                }
            } catch (IllegalArgumentException e) {
                throw new C26065a(e.getMessage());
            }
        }
    }

    /* renamed from: f */
    public void m2758f() {
        synchronized (this.f72742i) {
            if (!this.f72743j) {
                this.f72734a.m2875h(this.f72739f);
                synchronized (this.f72742i) {
                    if (this.f72744k != null) {
                        this.f72734a.m2876g().m2775d(this.f72744k);
                    }
                }
                for (AbstractC25921g1 abstractC25921g1 : this.f72739f) {
                    abstractC25921g1.m2898h();
                }
                this.f72743j = true;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:161:0x0694, code lost:
        if (p1727n3.p1758e.p1759a.p1761e.C25714a2.m3028g(java.lang.Math.max(0, r0 - 16), r0, r0) == false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0356, code lost:
        if (p1727n3.p1758e.p1759a.p1761e.C25714a2.m3030e(r0) < (r0.getHeight() * r0.getWidth())) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:278:0x06ce A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x05ea A[SYNTHETIC] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<p1727n3.p1758e.p1767b.AbstractC25921g1, android.util.Size> m2757j(p1727n3.p1758e.p1767b.p1768j1.AbstractC26059z r8, java.util.List<p1727n3.p1758e.p1767b.AbstractC25921g1> r9, java.util.List<p1727n3.p1758e.p1767b.AbstractC25921g1> r10, java.util.Map<p1727n3.p1758e.p1767b.AbstractC25921g1, p1727n3.p1758e.p1767b.p1772k1.C26064c.C26067c> r11) {
        /*
            Method dump skipped, instructions count: 2603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1758e.p1767b.p1772k1.C26064c.m2757j(n3.e.b.j1.z, java.util.List, java.util.List, java.util.Map):java.util.Map");
    }

    /* renamed from: k */
    public void m2756k() {
        synchronized (this.f72742i) {
            if (this.f72743j) {
                synchronized (this.f72742i) {
                    AbstractC26047w m2876g = this.f72734a.m2876g();
                    this.f72744k = m2876g.m2773f();
                    m2876g.m2772g();
                }
                this.f72734a.m2874i(new ArrayList(this.f72739f));
                this.f72743j = false;
            }
        }
    }

    /* renamed from: l */
    public List<AbstractC25921g1> m2755l() {
        ArrayList arrayList;
        synchronized (this.f72742i) {
            arrayList = new ArrayList(this.f72739f);
        }
        return arrayList;
    }

    /* renamed from: m */
    public void m2754m(Collection<AbstractC25921g1> collection) {
        synchronized (this.f72742i) {
            this.f72734a.m2874i(collection);
            for (AbstractC25921g1 abstractC25921g1 : collection) {
                if (this.f72739f.contains(abstractC25921g1)) {
                    abstractC25921g1.m2896j(this.f72734a);
                } else {
                    C26103y0.m2723b("CameraUseCaseAdapter", "Attempting to detach non-attached UseCase: " + abstractC25921g1, null);
                }
            }
            this.f72739f.removeAll(collection);
        }
    }

    /* renamed from: n */
    public final void m2753n(Map<AbstractC25921g1, Size> map, Collection<AbstractC25921g1> collection) {
        synchronized (this.f72742i) {
            if (this.f72740g != null) {
                boolean z = this.f72734a.m2878d().m2764c().intValue() == 0;
                Rect m2774e = this.f72734a.m2876g().m2774e();
                Rational rational = this.f72740g.f72517b;
                int m2745e = this.f72734a.m2878d().m2745e(this.f72740g.f72518c);
                C25927h1 c25927h1 = this.f72740g;
                Map<AbstractC25921g1, Rect> m43223l = MediaSessionCompat.m43223l(m2774e, z, rational, m2745e, c25927h1.f72516a, c25927h1.f72519d, map);
                for (AbstractC25921g1 abstractC25921g1 : collection) {
                    Rect rect = (Rect) ((HashMap) m43223l).get(abstractC25921g1);
                    Objects.requireNonNull(rect);
                    abstractC25921g1.mo2892n(rect);
                }
            }
        }
    }
}
