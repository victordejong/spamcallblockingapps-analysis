package p1727n3.p1834m0.p1835c0.p1840q.p1841e;

import java.util.ArrayList;
import java.util.List;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.p1840q.AbstractC26722a;
import p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c;
import p1727n3.p1834m0.p1835c0.p1840q.C26725d;
import p1727n3.p1834m0.p1835c0.p1840q.p1842f.AbstractC26730d;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
/* renamed from: n3.m0.c0.q.e.c */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/q/e/c.class */
public abstract class AbstractC26726c<T> implements AbstractC26722a<T> {

    /* renamed from: a */
    public final List<String> f74832a = new ArrayList();

    /* renamed from: b */
    public T f74833b;

    /* renamed from: c */
    public AbstractC26730d<T> f74834c;

    /* renamed from: d */
    public AbstractC26727a f74835d;

    /* renamed from: n3.m0.c0.q.e.c$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/q/e/c$a.class */
    public interface AbstractC26727a {
    }

    public AbstractC26726c(AbstractC26730d<T> abstractC26730d) {
        this.f74834c = abstractC26730d;
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.AbstractC26722a
    /* renamed from: a */
    public void mo1392a(T t) {
        this.f74833b = t;
        m1388e(this.f74835d, t);
    }

    /* renamed from: b */
    public abstract boolean m1391b(C26760p c26760p);

    /* renamed from: c */
    public abstract boolean m1390c(T t);

    /* renamed from: d */
    public void m1389d(Iterable<C26760p> iterable) {
        this.f74832a.clear();
        for (C26760p c26760p : iterable) {
            if (m1391b(c26760p)) {
                this.f74832a.add(c26760p.f74902a);
            }
        }
        if (this.f74832a.isEmpty()) {
            this.f74834c.m1385b(this);
        } else {
            AbstractC26730d<T> abstractC26730d = this.f74834c;
            synchronized (abstractC26730d.f74842c) {
                if (abstractC26730d.f74843d.add(this)) {
                    if (abstractC26730d.f74843d.size() == 1) {
                        abstractC26730d.f74844e = abstractC26730d.mo1383a();
                        AbstractC26839p.m1296c().mo1294a(AbstractC26730d.f74839f, String.format("%s: initial state = %s", abstractC26730d.getClass().getSimpleName(), abstractC26730d.f74844e), new Throwable[0]);
                        abstractC26730d.mo1382d();
                    }
                    mo1392a(abstractC26730d.f74844e);
                }
            }
        }
        m1388e(this.f74835d, this.f74833b);
    }

    /* renamed from: e */
    public final void m1388e(AbstractC26727a abstractC26727a, T t) {
        if (this.f74832a.isEmpty() || abstractC26727a == null) {
            return;
        }
        if (t == null || m1390c(t)) {
            List<String> list = this.f74832a;
            C26725d c26725d = (C26725d) abstractC26727a;
            synchronized (c26725d.f74831c) {
                AbstractC26724c abstractC26724c = c26725d.f74829a;
                if (abstractC26724c != null) {
                    abstractC26724c.mo1375c(list);
                }
            }
            return;
        }
        List<String> list2 = this.f74832a;
        C26725d c26725d2 = (C26725d) abstractC26727a;
        synchronized (c26725d2.f74831c) {
            ArrayList arrayList = new ArrayList();
            for (String str : list2) {
                if (c26725d2.m1395a(str)) {
                    AbstractC26839p.m1296c().mo1294a(C26725d.f74828d, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            AbstractC26724c abstractC26724c2 = c26725d2.f74829a;
            if (abstractC26724c2 != null) {
                abstractC26724c2.mo1371m(arrayList);
            }
        }
    }
}
