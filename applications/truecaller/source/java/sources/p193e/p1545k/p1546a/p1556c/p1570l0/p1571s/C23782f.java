package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.IOException;
import java.util.List;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23807b;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.s.f */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/f.class */
public final class C23782f extends AbstractC23807b<List<?>> {
    public C23782f(AbstractC23698i abstractC23698i, boolean z, AbstractC23712h abstractC23712h, AbstractC23890n<Object> abstractC23890n) {
        super(List.class, abstractC23698i, z, abstractC23712h, abstractC23890n);
    }

    public C23782f(C23782f c23782f, AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n<?> abstractC23890n, Boolean bool) {
        super(c23782f, abstractC23462d, abstractC23712h, abstractC23890n, bool);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        return ((List) obj).isEmpty();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        List<?> list = (List) obj;
        int size = list.size();
        if (size == 1 && ((this.f65935f == null && abstractC23425a0.m6889M(EnumC23958z.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f65935f == Boolean.TRUE)) {
            mo6010r(list, abstractC23372g, abstractC23425a0);
            return;
        }
        abstractC23372g.mo5876L1(list, size);
        mo6010r(list, abstractC23372g, abstractC23425a0);
        abstractC23372g.mo5848p0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
    /* renamed from: p */
    public AbstractC23765h<?> mo6000p(AbstractC23712h abstractC23712h) {
        return new C23782f(this, this.f65933d, abstractC23712h, this.f65937h, this.f65935f);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23807b
    /* renamed from: s */
    public AbstractC23807b<List<?>> mo6009s(AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n abstractC23890n, Boolean bool) {
        return new C23782f(this, abstractC23462d, abstractC23712h, abstractC23890n, bool);
    }

    /* renamed from: t */
    public void mo6010r(List<?> list, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        AbstractC23890n<Object> abstractC23890n;
        AbstractC23890n<Object> abstractC23890n2;
        AbstractC23890n<Object> abstractC23890n3 = this.f65937h;
        if (abstractC23890n3 != null) {
            int size = list.size();
            if (size == 0) {
                return;
            }
            AbstractC23712h abstractC23712h = this.f65936g;
            for (int i = 0; i < size; i++) {
                Object obj = list.get(i);
                if (obj == null) {
                    try {
                        abstractC23425a0.m6880t(abstractC23372g);
                        continue;
                    } catch (Exception e) {
                        m6012n(abstractC23425a0, e, list, i);
                        throw null;
                    }
                } else if (abstractC23712h == null) {
                    abstractC23890n3.mo5894f(obj, abstractC23372g, abstractC23425a0);
                    continue;
                } else {
                    abstractC23890n3.mo5893g(obj, abstractC23372g, abstractC23425a0, abstractC23712h);
                    continue;
                }
            }
        } else if (this.f65936g != null) {
            int size2 = list.size();
            if (size2 == 0) {
                return;
            }
            int i2 = 0;
            try {
                AbstractC23712h abstractC23712h2 = this.f65936g;
                AbstractC23788l abstractC23788l = this.f65938i;
                for (int i3 = 0; i3 < size2; i3++) {
                    i2 = i3;
                    Object obj2 = list.get(i3);
                    if (obj2 == null) {
                        abstractC23425a0.m6880t(abstractC23372g);
                    } else {
                        Class<?> cls = obj2.getClass();
                        int i4 = i3;
                        AbstractC23890n<Object> mo6060c = abstractC23788l.mo6060c(cls);
                        AbstractC23788l abstractC23788l2 = abstractC23788l;
                        AbstractC23890n<Object> abstractC23890n4 = mo6060c;
                        if (mo6060c == null) {
                            if (this.f65932c.mo5987s()) {
                                int i5 = i3;
                                AbstractC23788l.C23792d m6062a = abstractC23788l.m6062a(abstractC23425a0.m6881s(this.f65932c, cls), abstractC23425a0, this.f65933d);
                                int i6 = i3;
                                AbstractC23788l abstractC23788l3 = m6062a.f65906b;
                                if (abstractC23788l != abstractC23788l3) {
                                    this.f65938i = abstractC23788l3;
                                }
                                int i7 = i3;
                                abstractC23890n2 = m6062a.f65905a;
                            } else {
                                abstractC23890n2 = m6047q(abstractC23788l, cls, abstractC23425a0);
                            }
                            int i8 = i3;
                            abstractC23788l2 = this.f65938i;
                            abstractC23890n4 = abstractC23890n2;
                        }
                        abstractC23890n4.mo5893g(obj2, abstractC23372g, abstractC23425a0, abstractC23712h2);
                        abstractC23788l = abstractC23788l2;
                    }
                }
            } catch (Exception e2) {
                m6012n(abstractC23425a0, e2, list, i2);
                throw null;
            }
        } else {
            int size3 = list.size();
            if (size3 == 0) {
                return;
            }
            int i9 = 0;
            try {
                AbstractC23788l abstractC23788l4 = this.f65938i;
                for (int i10 = 0; i10 < size3; i10++) {
                    i9 = i10;
                    Object obj3 = list.get(i10);
                    if (obj3 == null) {
                        abstractC23425a0.m6880t(abstractC23372g);
                    } else {
                        Class<?> cls2 = obj3.getClass();
                        int i11 = i10;
                        AbstractC23890n<Object> mo6060c2 = abstractC23788l4.mo6060c(cls2);
                        AbstractC23788l abstractC23788l5 = abstractC23788l4;
                        AbstractC23890n<Object> abstractC23890n5 = mo6060c2;
                        if (mo6060c2 == null) {
                            if (this.f65932c.mo5987s()) {
                                int i12 = i10;
                                AbstractC23788l.C23792d m6062a2 = abstractC23788l4.m6062a(abstractC23425a0.m6881s(this.f65932c, cls2), abstractC23425a0, this.f65933d);
                                int i13 = i10;
                                AbstractC23788l abstractC23788l6 = m6062a2.f65906b;
                                if (abstractC23788l4 != abstractC23788l6) {
                                    this.f65938i = abstractC23788l6;
                                }
                                int i14 = i10;
                                abstractC23890n = m6062a2.f65905a;
                            } else {
                                abstractC23890n = m6047q(abstractC23788l4, cls2, abstractC23425a0);
                            }
                            int i15 = i10;
                            abstractC23788l5 = this.f65938i;
                            abstractC23890n5 = abstractC23890n;
                        }
                        abstractC23890n5.mo5894f(obj3, abstractC23372g, abstractC23425a0);
                        abstractC23788l4 = abstractC23788l5;
                    }
                }
            } catch (Exception e3) {
                m6012n(abstractC23425a0, e3, list, i9);
                throw null;
            }
        }
    }
}
