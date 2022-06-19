package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.IOException;
import java.util.Iterator;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23807b;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.s.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/h.class */
public class C23784h extends AbstractC23807b<Iterator<?>> {
    public C23784h(AbstractC23698i abstractC23698i, boolean z, AbstractC23712h abstractC23712h) {
        super(Iterator.class, abstractC23698i, z, abstractC23712h, (AbstractC23890n<Object>) null);
    }

    public C23784h(C23784h c23784h, AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n<?> abstractC23890n, Boolean bool) {
        super(c23784h, abstractC23462d, abstractC23712h, abstractC23890n, bool);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        return !((Iterator) obj).hasNext();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Iterator<?> it = (Iterator) obj;
        abstractC23372g.mo5881I1(it);
        mo6010r(it, abstractC23372g, abstractC23425a0);
        abstractC23372g.mo5848p0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
    /* renamed from: p */
    public AbstractC23765h<?> mo6000p(AbstractC23712h abstractC23712h) {
        return new C23784h(this, this.f65933d, abstractC23712h, this.f65937h, this.f65935f);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23807b
    /* renamed from: s */
    public AbstractC23807b<Iterator<?>> mo6009s(AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n abstractC23890n, Boolean bool) {
        return new C23784h(this, abstractC23462d, abstractC23712h, abstractC23890n, bool);
    }

    /* renamed from: t */
    public void mo6010r(Iterator<?> it, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        AbstractC23890n<Object> abstractC23890n;
        if (!it.hasNext()) {
            return;
        }
        AbstractC23890n<Object> abstractC23890n2 = this.f65937h;
        if (abstractC23890n2 != null) {
            AbstractC23712h abstractC23712h = this.f65936g;
            do {
                Object next = it.next();
                if (next == null) {
                    abstractC23425a0.m6880t(abstractC23372g);
                } else if (abstractC23712h == null) {
                    abstractC23890n2.mo5894f(next, abstractC23372g, abstractC23425a0);
                } else {
                    abstractC23890n2.mo5893g(next, abstractC23372g, abstractC23425a0, abstractC23712h);
                }
            } while (it.hasNext());
            return;
        }
        AbstractC23712h abstractC23712h2 = this.f65936g;
        AbstractC23788l abstractC23788l = this.f65938i;
        do {
            Object next2 = it.next();
            if (next2 == null) {
                abstractC23425a0.m6880t(abstractC23372g);
            } else {
                Class<?> cls = next2.getClass();
                AbstractC23890n<Object> mo6060c = abstractC23788l.mo6060c(cls);
                AbstractC23788l abstractC23788l2 = abstractC23788l;
                AbstractC23890n<Object> abstractC23890n3 = mo6060c;
                if (mo6060c == null) {
                    if (this.f65932c.mo5987s()) {
                        AbstractC23788l.C23792d m6062a = abstractC23788l.m6062a(abstractC23425a0.m6881s(this.f65932c, cls), abstractC23425a0, this.f65933d);
                        AbstractC23788l abstractC23788l3 = m6062a.f65906b;
                        if (abstractC23788l != abstractC23788l3) {
                            this.f65938i = abstractC23788l3;
                        }
                        abstractC23890n = m6062a.f65905a;
                    } else {
                        abstractC23890n = m6047q(abstractC23788l, cls, abstractC23425a0);
                    }
                    abstractC23788l2 = this.f65938i;
                    abstractC23890n3 = abstractC23890n;
                }
                if (abstractC23712h2 == null) {
                    abstractC23890n3.mo5894f(next2, abstractC23372g, abstractC23425a0);
                    abstractC23788l = abstractC23788l2;
                } else {
                    abstractC23890n3.mo5893g(next2, abstractC23372g, abstractC23425a0, abstractC23712h2);
                    abstractC23788l = abstractC23788l2;
                }
            }
        } while (it.hasNext());
    }
}
