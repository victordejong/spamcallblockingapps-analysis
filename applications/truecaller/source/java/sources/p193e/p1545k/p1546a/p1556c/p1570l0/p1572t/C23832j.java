package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l;
/* renamed from: e.k.a.c.l0.t.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/j.class */
public class C23832j extends AbstractC23807b<Collection<?>> {
    public C23832j(AbstractC23698i abstractC23698i, boolean z, AbstractC23712h abstractC23712h, AbstractC23890n<Object> abstractC23890n) {
        super(Collection.class, abstractC23698i, z, abstractC23712h, abstractC23890n);
    }

    public C23832j(C23832j c23832j, AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n<?> abstractC23890n, Boolean bool) {
        super(c23832j, abstractC23462d, abstractC23712h, abstractC23890n, bool);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        return ((Collection) obj).isEmpty();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Collection<?> collection = (Collection) obj;
        int size = collection.size();
        if (size == 1 && ((this.f65935f == null && abstractC23425a0.m6889M(EnumC23958z.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f65935f == Boolean.TRUE)) {
            mo6010r(collection, abstractC23372g, abstractC23425a0);
            return;
        }
        abstractC23372g.mo5876L1(collection, size);
        mo6010r(collection, abstractC23372g, abstractC23425a0);
        abstractC23372g.mo5848p0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
    /* renamed from: p */
    public AbstractC23765h<?> mo6000p(AbstractC23712h abstractC23712h) {
        return new C23832j(this, this.f65933d, abstractC23712h, this.f65937h, this.f65935f);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23807b
    /* renamed from: s */
    public AbstractC23807b<Collection<?>> mo6009s(AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n abstractC23890n, Boolean bool) {
        return new C23832j(this, abstractC23462d, abstractC23712h, abstractC23890n, bool);
    }

    /* renamed from: t */
    public void mo6010r(Collection<?> collection, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        AbstractC23890n<Object> abstractC23890n;
        abstractC23372g.mo7191J(collection);
        AbstractC23890n<Object> abstractC23890n2 = this.f65937h;
        int i = 0;
        if (abstractC23890n2 != null) {
            Iterator<?> it = collection.iterator();
            if (!it.hasNext()) {
                return;
            }
            AbstractC23712h abstractC23712h = this.f65936g;
            do {
                Object next = it.next();
                if (next == null) {
                    try {
                        abstractC23425a0.m6880t(abstractC23372g);
                    } catch (Exception e) {
                        m6012n(abstractC23425a0, e, collection, i);
                        throw null;
                    }
                } else if (abstractC23712h == null) {
                    abstractC23890n2.mo5894f(next, abstractC23372g, abstractC23425a0);
                } else {
                    abstractC23890n2.mo5893g(next, abstractC23372g, abstractC23425a0, abstractC23712h);
                }
                i++;
            } while (it.hasNext());
            return;
        }
        Iterator<?> it2 = collection.iterator();
        if (!it2.hasNext()) {
            return;
        }
        AbstractC23788l abstractC23788l = this.f65938i;
        AbstractC23712h abstractC23712h2 = this.f65936g;
        int i2 = 0;
        do {
            int i3 = i2;
            try {
                Object next2 = it2.next();
                if (next2 == null) {
                    abstractC23425a0.m6880t(abstractC23372g);
                } else {
                    Class<?> cls = next2.getClass();
                    int i4 = i2;
                    AbstractC23890n<Object> mo6060c = abstractC23788l.mo6060c(cls);
                    AbstractC23788l abstractC23788l2 = abstractC23788l;
                    AbstractC23890n<Object> abstractC23890n3 = mo6060c;
                    if (mo6060c == null) {
                        if (this.f65932c.mo5987s()) {
                            int i5 = i2;
                            AbstractC23788l.C23792d m6062a = abstractC23788l.m6062a(abstractC23425a0.m6881s(this.f65932c, cls), abstractC23425a0, this.f65933d);
                            int i6 = i2;
                            AbstractC23788l abstractC23788l3 = m6062a.f65906b;
                            if (abstractC23788l != abstractC23788l3) {
                                this.f65938i = abstractC23788l3;
                            }
                            int i7 = i2;
                            abstractC23890n = m6062a.f65905a;
                        } else {
                            abstractC23890n = m6047q(abstractC23788l, cls, abstractC23425a0);
                        }
                        int i8 = i2;
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
                i2++;
            } catch (Exception e2) {
                m6012n(abstractC23425a0, e2, collection, i3);
                throw null;
            }
        } while (it2.hasNext());
    }
}
