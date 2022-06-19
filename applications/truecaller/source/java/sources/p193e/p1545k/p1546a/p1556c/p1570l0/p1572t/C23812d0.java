package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.t.d0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/d0.class */
public class C23812d0 extends AbstractC23805a<Object[]> implements AbstractC23766i {

    /* renamed from: e */
    public final boolean f65949e;

    /* renamed from: f */
    public final AbstractC23698i f65950f;

    /* renamed from: g */
    public final AbstractC23712h f65951g;

    /* renamed from: h */
    public AbstractC23890n<Object> f65952h;

    /* renamed from: i */
    public AbstractC23788l f65953i = AbstractC23788l.C23790b.f65903b;

    public C23812d0(AbstractC23698i abstractC23698i, boolean z, AbstractC23712h abstractC23712h, AbstractC23890n<Object> abstractC23890n) {
        super(Object[].class);
        this.f65950f = abstractC23698i;
        this.f65949e = z;
        this.f65951g = abstractC23712h;
        this.f65952h = abstractC23890n;
    }

    public C23812d0(C23812d0 c23812d0, AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n<?> abstractC23890n, Boolean bool) {
        super(c23812d0, abstractC23462d, bool);
        this.f65950f = c23812d0.f65950f;
        this.f65951g = abstractC23712h;
        this.f65949e = c23812d0.f65949e;
        this.f65952h = abstractC23890n;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a, p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23890n<?> mo5992b(p193e.p1545k.p1546a.p1556c.AbstractC23425a0 r9, p193e.p1545k.p1546a.p1556c.AbstractC23462d r10) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.C23812d0.mo5992b(e.k.a.c.a0, e.k.a.c.d):e.k.a.c.n");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        return ((Object[]) obj).length == 0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Object[] objArr = (Object[]) obj;
        int length = objArr.length;
        if (length == 1 && ((this.f65931d == null && abstractC23425a0.m6889M(EnumC23958z.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f65931d == Boolean.TRUE)) {
            mo6028s(objArr, abstractC23372g, abstractC23425a0);
            return;
        }
        abstractC23372g.mo5876L1(objArr, length);
        mo6028s(objArr, abstractC23372g, abstractC23425a0);
        abstractC23372g.mo5848p0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
    /* renamed from: p */
    public AbstractC23765h<?> mo6000p(AbstractC23712h abstractC23712h) {
        return new C23812d0(this.f65950f, this.f65949e, abstractC23712h, this.f65952h);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23805a
    /* renamed from: r */
    public AbstractC23890n<?> mo6029r(AbstractC23462d abstractC23462d, Boolean bool) {
        return new C23812d0(this, abstractC23462d, this.f65951g, this.f65952h, bool);
    }

    /* renamed from: t */
    public void mo6028s(Object[] objArr, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Object obj;
        int i;
        Exception e;
        Object obj2;
        int i2;
        Exception e2;
        Object obj3;
        int length = objArr.length;
        if (length == 0) {
            return;
        }
        AbstractC23890n<Object> abstractC23890n = this.f65952h;
        if (abstractC23890n != null) {
            int length2 = objArr.length;
            AbstractC23712h abstractC23712h = this.f65951g;
            for (int i3 = 0; i3 < length2; i3++) {
                Object obj4 = objArr[i3];
                if (obj4 == null) {
                    obj3 = obj4;
                    try {
                        abstractC23425a0.m6880t(abstractC23372g);
                        continue;
                    } catch (Exception e3) {
                        m6012n(abstractC23425a0, e3, obj3, i3);
                        throw null;
                    }
                } else if (abstractC23712h == null) {
                    obj3 = obj4;
                    abstractC23890n.mo5894f(obj4, abstractC23372g, abstractC23425a0);
                    continue;
                } else {
                    obj3 = obj4;
                    abstractC23890n.mo5893g(obj4, abstractC23372g, abstractC23425a0, abstractC23712h);
                    continue;
                }
            }
            return;
        }
        AbstractC23712h abstractC23712h2 = this.f65951g;
        if (abstractC23712h2 != null) {
            int length3 = objArr.length;
            try {
                AbstractC23788l abstractC23788l = this.f65953i;
                i2 = 0;
                while (i2 < length3) {
                    Object obj5 = objArr[i2];
                    if (obj5 == null) {
                        obj2 = obj5;
                        try {
                            abstractC23425a0.m6880t(abstractC23372g);
                            i2++;
                        } catch (Exception e4) {
                            e2 = e4;
                            m6012n(abstractC23425a0, e2, obj2, i2);
                            throw null;
                        }
                    } else {
                        obj2 = obj5;
                        Class<?> cls = obj5.getClass();
                        AbstractC23890n<Object> mo6060c = abstractC23788l.mo6060c(cls);
                        AbstractC23890n<Object> abstractC23890n2 = mo6060c;
                        if (mo6060c == null) {
                            AbstractC23890n<Object> m6878v = abstractC23425a0.m6878v(cls, this.f65930c);
                            AbstractC23788l mo6061b = abstractC23788l.mo6061b(cls, m6878v);
                            abstractC23890n2 = m6878v;
                            if (abstractC23788l != mo6061b) {
                                this.f65953i = mo6061b;
                                abstractC23890n2 = m6878v;
                            }
                        }
                        abstractC23890n2.mo5893g(obj5, abstractC23372g, abstractC23425a0, abstractC23712h2);
                        i2++;
                    }
                }
            } catch (Exception e5) {
                e2 = e5;
                obj2 = null;
                i2 = 0;
            }
        } else {
            try {
                AbstractC23788l abstractC23788l2 = this.f65953i;
                i = 0;
                while (i < length) {
                    Object obj6 = objArr[i];
                    if (obj6 == null) {
                        obj = obj6;
                        try {
                            abstractC23425a0.m6880t(abstractC23372g);
                            i++;
                        } catch (Exception e6) {
                            e = e6;
                            m6012n(abstractC23425a0, e, obj, i);
                            throw null;
                        }
                    } else {
                        obj = obj6;
                        Class<?> cls2 = obj6.getClass();
                        AbstractC23890n<Object> mo6060c2 = abstractC23788l2.mo6060c(cls2);
                        AbstractC23890n<Object> abstractC23890n3 = mo6060c2;
                        if (mo6060c2 == null) {
                            if (this.f65950f.mo5987s()) {
                                AbstractC23788l.C23792d m6062a = abstractC23788l2.m6062a(abstractC23425a0.m6881s(this.f65950f, cls2), abstractC23425a0, this.f65930c);
                                AbstractC23788l abstractC23788l3 = m6062a.f65906b;
                                if (abstractC23788l2 != abstractC23788l3) {
                                    this.f65953i = abstractC23788l3;
                                }
                                abstractC23890n3 = m6062a.f65905a;
                            } else {
                                AbstractC23890n<Object> m6878v2 = abstractC23425a0.m6878v(cls2, this.f65930c);
                                AbstractC23788l mo6061b2 = abstractC23788l2.mo6061b(cls2, m6878v2);
                                abstractC23890n3 = m6878v2;
                                if (abstractC23788l2 != mo6061b2) {
                                    this.f65953i = mo6061b2;
                                    abstractC23890n3 = m6878v2;
                                }
                            }
                        }
                        abstractC23890n3.mo5894f(obj6, abstractC23372g, abstractC23425a0);
                        i++;
                    }
                }
            } catch (Exception e7) {
                e = e7;
                obj = null;
                i = 0;
            }
        }
    }
}
