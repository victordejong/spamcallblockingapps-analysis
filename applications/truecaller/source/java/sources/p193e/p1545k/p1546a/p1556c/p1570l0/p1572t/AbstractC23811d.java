package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1789g0.C26232y;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23772n;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23758a;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23760c;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23762e;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23786j;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23804u;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
/* renamed from: e.k.a.c.l0.t.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/d.class */
public abstract class AbstractC23811d extends AbstractC23851q0<Object> implements AbstractC23766i, AbstractC23772n {

    /* renamed from: k */
    public static final C23760c[] f65940k = new C23760c[0];

    /* renamed from: c */
    public final AbstractC23698i f65941c;

    /* renamed from: d */
    public final C23760c[] f65942d;

    /* renamed from: e */
    public final C23760c[] f65943e;

    /* renamed from: f */
    public final C23758a f65944f;

    /* renamed from: g */
    public final Object f65945g;

    /* renamed from: h */
    public final AbstractC23663i f65946h;

    /* renamed from: i */
    public final C23786j f65947i;

    /* renamed from: j */
    public final AbstractC23311k.EnumC23314c f65948j;

    static {
        new C23951v("#object-ref");
    }

    public AbstractC23811d(AbstractC23698i abstractC23698i, C23762e c23762e, C23760c[] c23760cArr, C23760c[] c23760cArr2) {
        super(abstractC23698i);
        this.f65941c = abstractC23698i;
        this.f65942d = c23760cArr;
        this.f65943e = c23760cArr2;
        if (c23762e == null) {
            this.f65946h = null;
            this.f65944f = null;
            this.f65945g = null;
            this.f65947i = null;
            this.f65948j = null;
            return;
        }
        this.f65946h = c23762e.f65860g;
        this.f65944f = c23762e.f65858e;
        this.f65945g = c23762e.f65859f;
        this.f65947i = c23762e.f65861h;
        this.f65948j = c23762e.f65854a.mo6358b(null).f64499b;
    }

    public AbstractC23811d(AbstractC23811d abstractC23811d, C23786j c23786j, Object obj) {
        super(abstractC23811d.f65984a);
        this.f65941c = abstractC23811d.f65941c;
        this.f65942d = abstractC23811d.f65942d;
        this.f65943e = abstractC23811d.f65943e;
        this.f65946h = abstractC23811d.f65946h;
        this.f65944f = abstractC23811d.f65944f;
        this.f65947i = c23786j;
        this.f65945g = obj;
        this.f65948j = abstractC23811d.f65948j;
    }

    public AbstractC23811d(AbstractC23811d abstractC23811d, Set<String> set, Set<String> set2) {
        super(abstractC23811d.f65984a);
        this.f65941c = abstractC23811d.f65941c;
        C23760c[] c23760cArr = abstractC23811d.f65942d;
        C23760c[] c23760cArr2 = abstractC23811d.f65943e;
        int length = c23760cArr.length;
        ArrayList arrayList = new ArrayList(length);
        ArrayList arrayList2 = c23760cArr2 == null ? null : new ArrayList(length);
        for (int i = 0; i < length; i++) {
            C23760c c23760c = c23760cArr[i];
            if (!C26232y.m2406U1(c23760c.f65836c.f64805a, set, set2)) {
                arrayList.add(c23760c);
                if (c23760cArr2 != null) {
                    arrayList2.add(c23760cArr2[i]);
                }
            }
        }
        this.f65942d = (C23760c[]) arrayList.toArray(new C23760c[arrayList.size()]);
        this.f65943e = arrayList2 == null ? null : (C23760c[]) arrayList2.toArray(new C23760c[arrayList2.size()]);
        this.f65946h = abstractC23811d.f65946h;
        this.f65944f = abstractC23811d.f65944f;
        this.f65947i = abstractC23811d.f65947i;
        this.f65945g = abstractC23811d.f65945g;
        this.f65948j = abstractC23811d.f65948j;
    }

    public AbstractC23811d(AbstractC23811d abstractC23811d, C23760c[] c23760cArr, C23760c[] c23760cArr2) {
        super(abstractC23811d.f65984a);
        this.f65941c = abstractC23811d.f65941c;
        this.f65942d = c23760cArr;
        this.f65943e = c23760cArr2;
        this.f65946h = abstractC23811d.f65946h;
        this.f65944f = abstractC23811d.f65944f;
        this.f65947i = abstractC23811d.f65947i;
        this.f65945g = abstractC23811d.f65945g;
        this.f65948j = abstractC23811d.f65948j;
    }

    /* renamed from: t */
    public static final C23760c[] m6042t(C23760c[] c23760cArr, AbstractC23929s abstractC23929s) {
        if (c23760cArr == null || c23760cArr.length == 0 || abstractC23929s == null || abstractC23929s == AbstractC23929s.f66188a) {
            return c23760cArr;
        }
        int length = c23760cArr.length;
        C23760c[] c23760cArr2 = new C23760c[length];
        for (int i = 0; i < length; i++) {
            C23760c c23760c = c23760cArr[i];
            if (c23760c != null) {
                c23760cArr2[i] = c23760c.mo6052j(abstractC23929s);
            }
        }
        return c23760cArr2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23772n
    /* renamed from: a */
    public void mo6025a(AbstractC23425a0 abstractC23425a0) throws C23733k {
        C23760c c23760c;
        AbstractC23890n<Object> abstractC23890n;
        C23760c c23760c2;
        C23760c[] c23760cArr = this.f65943e;
        int length = c23760cArr == null ? 0 : c23760cArr.length;
        int length2 = this.f65942d.length;
        for (int i = 0; i < length2; i++) {
            C23760c c23760c3 = this.f65942d[i];
            if (!c23760c3.f65849p) {
                if (!(c23760c3.f65846m != null) && (abstractC23890n = abstractC23425a0.f64998h) != null) {
                    c23760c3.mo6074h(abstractC23890n);
                    if (i < length && (c23760c2 = this.f65943e[i]) != null) {
                        c23760c2.mo6074h(abstractC23890n);
                    }
                }
            }
            if (!(c23760c3.f65845l != null)) {
                AbstractC23426b m6895E = abstractC23425a0.m6895E();
                AbstractC23890n<Object> abstractC23890n2 = null;
                if (m6895E != null) {
                    AbstractC23636b abstractC23636b = c23760c3.f65842i;
                    abstractC23890n2 = null;
                    if (abstractC23636b != null) {
                        Object mo6305R = m6895E.mo6305R(abstractC23636b);
                        abstractC23890n2 = null;
                        if (mo6305R != null) {
                            AbstractC23918i<Object, Object> m6524g = abstractC23425a0.m6524g(c23760c3.f65842i, mo6305R);
                            AbstractC23698i mo5736b = m6524g.mo5736b(abstractC23425a0.mo6470i());
                            abstractC23890n2 = new C23833j0(m6524g, mo5736b, mo5736b.m6240E() ? null : abstractC23425a0.m6897C(mo5736b, c23760c3));
                        }
                    }
                }
                AbstractC23890n<Object> abstractC23890n3 = abstractC23890n2;
                if (abstractC23890n2 == null) {
                    AbstractC23698i abstractC23698i = c23760c3.f65839f;
                    AbstractC23698i abstractC23698i2 = abstractC23698i;
                    if (abstractC23698i == null) {
                        AbstractC23698i abstractC23698i3 = c23760c3.f65838e;
                        abstractC23698i2 = abstractC23698i3;
                        if (!abstractC23698i3.m6242C()) {
                            if (abstractC23698i3.mo5931z() || abstractC23698i3.mo5926g() > 0) {
                                c23760c3.f65840g = abstractC23698i3;
                            }
                        }
                    }
                    AbstractC23890n<Object> m6897C = abstractC23425a0.m6897C(abstractC23698i2, c23760c3);
                    abstractC23890n3 = m6897C;
                    if (abstractC23698i2.mo5931z()) {
                        AbstractC23712h abstractC23712h = (AbstractC23712h) abstractC23698i2.mo5948k().f65731d;
                        abstractC23890n3 = m6897C;
                        if (abstractC23712h != null) {
                            abstractC23890n3 = m6897C;
                            if (m6897C instanceof AbstractC23765h) {
                                AbstractC23765h abstractC23765h = (AbstractC23765h) m6897C;
                                Objects.requireNonNull(abstractC23765h);
                                abstractC23890n3 = abstractC23765h.mo6000p(abstractC23712h);
                            }
                        }
                    }
                }
                if (i >= length || (c23760c = this.f65943e[i]) == null) {
                    c23760c3.mo6053i(abstractC23890n3);
                } else {
                    c23760c.mo6053i(abstractC23890n3);
                }
            }
        }
        C23758a c23758a = this.f65944f;
        if (c23758a != null) {
            AbstractC23890n<?> abstractC23890n4 = c23758a.f65830c;
            if (!(abstractC23890n4 instanceof AbstractC23766i)) {
                return;
            }
            AbstractC23890n<?> m6892H = abstractC23425a0.m6892H(abstractC23890n4, c23758a.f65828a);
            c23758a.f65830c = m6892H;
            if (!(m6892H instanceof C23857t)) {
                return;
            }
            c23758a.f65831d = (C23857t) m6892H;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x03e1, code lost:
        if (r17 == null) goto L96;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0393  */
    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23890n<?> mo5992b(p193e.p1545k.p1546a.p1556c.AbstractC23425a0 r11, p193e.p1545k.p1546a.p1556c.AbstractC23462d r12) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d.mo5992b(e.k.a.c.a0, e.k.a.c.d):e.k.a.c.n");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        if (this.f65947i != null) {
            abstractC23372g.mo7191J(obj);
            m6046p(obj, abstractC23372g, abstractC23425a0, abstractC23712h);
            return;
        }
        abstractC23372g.mo7191J(obj);
        C23422b m6044r = m6044r(abstractC23712h, obj, EnumC23381m.START_OBJECT);
        abstractC23712h.mo6002e(abstractC23372g, m6044r);
        Object obj2 = this.f65945g;
        if (obj2 == null) {
            m6041u(obj, abstractC23372g, abstractC23425a0);
            abstractC23712h.mo6001f(abstractC23372g, m6044r);
            return;
        }
        if (this.f65943e != null) {
            Class<?> cls = abstractC23425a0.f64992b;
        }
        m6013m(abstractC23425a0, obj2, obj);
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: i */
    public boolean mo5891i() {
        return this.f65947i != null;
    }

    /* renamed from: p */
    public final void m6046p(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        C23786j c23786j = this.f65947i;
        C23804u mo6091x = abstractC23425a0.mo6091x(obj, c23786j.f65894c);
        if (mo6091x.m6049b(abstractC23372g, abstractC23425a0, c23786j)) {
            return;
        }
        if (mo6091x.f65928b == null) {
            mo6091x.f65928b = mo6091x.f65927a.mo6065c(obj);
        }
        Object obj2 = mo6091x.f65928b;
        if (c23786j.f65896e) {
            c23786j.f65895d.mo5894f(obj2, abstractC23372g, abstractC23425a0);
            return;
        }
        C23786j c23786j2 = this.f65947i;
        C23422b m6044r = m6044r(abstractC23712h, obj, EnumC23381m.START_OBJECT);
        abstractC23712h.mo6002e(abstractC23372g, m6044r);
        mo6091x.m6050a(abstractC23372g, abstractC23425a0, c23786j2);
        Object obj3 = this.f65945g;
        if (obj3 != null) {
            m6013m(abstractC23425a0, obj3, obj);
            throw null;
        }
        m6041u(obj, abstractC23372g, abstractC23425a0);
        abstractC23712h.mo6001f(abstractC23372g, m6044r);
    }

    /* renamed from: q */
    public final void m6045q(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, boolean z) throws IOException {
        C23786j c23786j = this.f65947i;
        C23804u mo6091x = abstractC23425a0.mo6091x(obj, c23786j.f65894c);
        if (mo6091x.m6049b(abstractC23372g, abstractC23425a0, c23786j)) {
            return;
        }
        if (mo6091x.f65928b == null) {
            mo6091x.f65928b = mo6091x.f65927a.mo6065c(obj);
        }
        Object obj2 = mo6091x.f65928b;
        if (c23786j.f65896e) {
            c23786j.f65895d.mo5894f(obj2, abstractC23372g, abstractC23425a0);
            return;
        }
        if (z) {
            abstractC23372g.mo5874O1(obj);
        }
        mo6091x.m6050a(abstractC23372g, abstractC23425a0, c23786j);
        Object obj3 = this.f65945g;
        if (obj3 != null) {
            m6013m(abstractC23425a0, obj3, obj);
            throw null;
        }
        m6041u(obj, abstractC23372g, abstractC23425a0);
        if (!z) {
            return;
        }
        abstractC23372g.mo5840t0();
    }

    /* renamed from: r */
    public final C23422b m6044r(AbstractC23712h abstractC23712h, Object obj, EnumC23381m enumC23381m) {
        AbstractC23663i abstractC23663i = this.f65946h;
        if (abstractC23663i == null) {
            return abstractC23712h.m6216d(obj, enumC23381m);
        }
        Object mo6374j = abstractC23663i.mo6374j(obj);
        Object obj2 = mo6374j;
        if (mo6374j == null) {
            obj2 = "";
        }
        C23422b m6216d = abstractC23712h.m6216d(obj, enumC23381m);
        m6216d.f64978c = obj2;
        return m6216d;
    }

    /* renamed from: s */
    public abstract AbstractC23811d mo6043s();

    /* renamed from: u */
    public void m6041u(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        String str = "[anySetter]";
        C23760c[] c23760cArr = this.f65943e;
        if (c23760cArr == null || abstractC23425a0.f64992b == null) {
            c23760cArr = this.f65942d;
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        try {
            int length = c23760cArr.length;
            while (i3 < length) {
                C23760c c23760c = c23760cArr[i3];
                if (c23760c != null) {
                    c23760c.mo6051l(obj, abstractC23372g, abstractC23425a0);
                }
                i3++;
            }
            C23758a c23758a = this.f65944f;
            if (c23758a == null) {
                return;
            }
            i = i3;
            i2 = i3;
            c23758a.m6113a(obj, abstractC23372g, abstractC23425a0);
        } catch (Exception e) {
            if (i2 != c23760cArr.length) {
                str = c23760cArr[i2].f65836c.f64805a;
            }
            m6011o(abstractC23425a0, e, obj, str);
            throw null;
        } catch (StackOverflowError e2) {
            C23733k c23733k = new C23733k(abstractC23372g, "Infinite recursion (StackOverflowError)", e2);
            if (i != c23760cArr.length) {
                str = c23760cArr[i].f65836c.f64805a;
            }
            c23733k.m6161f(new C23733k.C23734a(obj, str));
            throw c23733k;
        }
    }

    /* renamed from: v */
    public abstract AbstractC23811d mo6040v(Set<String> set, Set<String> set2);

    /* renamed from: w */
    public abstract AbstractC23811d mo6039w(Object obj);

    /* renamed from: x */
    public abstract AbstractC23811d mo6038x(C23786j c23786j);

    /* renamed from: y */
    public abstract AbstractC23811d mo6037y(C23760c[] c23760cArr, C23760c[] c23760cArr2);
}
