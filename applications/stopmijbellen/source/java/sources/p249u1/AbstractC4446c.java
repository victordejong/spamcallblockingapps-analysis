package p249u1;

import java.util.ArrayList;
import java.util.List;
import p186o1.AbstractC3824h;
import p238t1.AbstractC4352a;
import p238t1.AbstractC4354c;
import p238t1.C4355d;
import p260v1.AbstractC4580d;
import p282x1.C4832p;
/* renamed from: u1.c */
/* loaded from: classes-dex2jar.jar:u1/c.class */
public abstract class AbstractC4446c<T> implements AbstractC4352a<T> {

    /* renamed from: a */
    public final List<String> f13813a = new ArrayList();

    /* renamed from: b */
    public T f13814b;

    /* renamed from: c */
    public AbstractC4580d<T> f13815c;

    /* renamed from: d */
    public AbstractC4447a f13816d;

    /* renamed from: u1.c$a */
    /* loaded from: classes-dex2jar.jar:u1/c$a.class */
    public interface AbstractC4447a {
    }

    public AbstractC4446c(AbstractC4580d<T> abstractC4580d) {
        this.f13815c = abstractC4580d;
    }

    @Override // p238t1.AbstractC4352a
    /* renamed from: a */
    public void mo914a(T t) {
        this.f13814b = t;
        m912e(this.f13816d, t);
    }

    /* renamed from: b */
    public abstract boolean mo911b(C4832p c4832p);

    /* renamed from: c */
    public abstract boolean mo910c(T t);

    /* renamed from: d */
    public void m913d(Iterable<C4832p> iterable) {
        this.f13813a.clear();
        for (C4832p c4832p : iterable) {
            if (mo911b(c4832p)) {
                this.f13813a.add(c4832p.f14831a);
            }
        }
        if (this.f13813a.isEmpty()) {
            this.f13815c.m760b(this);
        } else {
            AbstractC4580d<T> abstractC4580d = this.f13815c;
            synchronized (abstractC4580d.f14159c) {
                if (abstractC4580d.f14160d.add(this)) {
                    if (abstractC4580d.f14160d.size() == 1) {
                        abstractC4580d.f14161e = abstractC4580d.mo754a();
                        AbstractC3824h.m1774c().mo1772a(AbstractC4580d.f14156f, String.format("%s: initial state = %s", abstractC4580d.getClass().getSimpleName(), abstractC4580d.f14161e), new Throwable[0]);
                        abstractC4580d.mo758d();
                    }
                    mo914a(abstractC4580d.f14161e);
                }
            }
        }
        m912e(this.f13816d, this.f13814b);
    }

    /* renamed from: e */
    public final void m912e(AbstractC4447a abstractC4447a, T t) {
        if (this.f13813a.isEmpty() || abstractC4447a == null) {
            return;
        }
        if (t == null || mo910c(t)) {
            List<String> list = this.f13813a;
            C4355d c4355d = (C4355d) abstractC4447a;
            synchronized (c4355d.f13589c) {
                AbstractC4354c abstractC4354c = c4355d.f13587a;
                if (abstractC4354c != null) {
                    abstractC4354c.mo1014c(list);
                }
            }
            return;
        }
        List<String> list2 = this.f13813a;
        C4355d c4355d2 = (C4355d) abstractC4447a;
        synchronized (c4355d2.f13589c) {
            ArrayList arrayList = new ArrayList();
            for (String str : list2) {
                if (c4355d2.m1012a(str)) {
                    AbstractC3824h.m1774c().mo1772a(C4355d.f13586d, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            AbstractC4354c abstractC4354c2 = c4355d2.f13587a;
            if (abstractC4354c2 != null) {
                abstractC4354c2.mo1013e(arrayList);
            }
        }
    }
}
