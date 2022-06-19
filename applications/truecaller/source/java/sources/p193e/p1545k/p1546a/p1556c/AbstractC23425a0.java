package p193e.p1545k.p1546a.p1556c;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Map;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23455i;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23616b;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23619e;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23679q;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23767j;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23772n;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23774p;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23763f;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23773o;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23779c;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23795m;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23800q;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23804u;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.C23833j0;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.C23859u;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23907c0;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.a0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/a0.class */
public abstract class AbstractC23425a0 extends AbstractC23614e {

    /* renamed from: m */
    public static final AbstractC23890n<Object> f64989m = new C23779c("Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)");

    /* renamed from: n */
    public static final AbstractC23890n<Object> f64990n = new C23800q();

    /* renamed from: a */
    public final C23957y f64991a;

    /* renamed from: b */
    public final Class<?> f64992b;

    /* renamed from: c */
    public final AbstractC23774p f64993c;

    /* renamed from: d */
    public final C23773o f64994d;

    /* renamed from: e */
    public transient AbstractC23455i f64995e;

    /* renamed from: f */
    public AbstractC23890n<Object> f64996f;

    /* renamed from: g */
    public AbstractC23890n<Object> f64997g;

    /* renamed from: h */
    public AbstractC23890n<Object> f64998h;

    /* renamed from: i */
    public AbstractC23890n<Object> f64999i;

    /* renamed from: j */
    public final C23795m f65000j;

    /* renamed from: k */
    public DateFormat f65001k;

    /* renamed from: l */
    public final boolean f65002l;

    public AbstractC23425a0() {
        this.f64996f = f64990n;
        this.f64998h = C23859u.f66012c;
        this.f64999i = f64989m;
        this.f64991a = null;
        this.f64993c = null;
        this.f64994d = new C23773o();
        this.f65000j = null;
        this.f64992b = null;
        this.f64995e = null;
        this.f65002l = true;
    }

    public AbstractC23425a0(AbstractC23425a0 abstractC23425a0, C23957y c23957y, AbstractC23774p abstractC23774p) {
        this.f64996f = f64990n;
        this.f64998h = C23859u.f66012c;
        AbstractC23890n<Object> abstractC23890n = f64989m;
        this.f64999i = abstractC23890n;
        this.f64993c = abstractC23774p;
        this.f64991a = c23957y;
        C23773o c23773o = abstractC23425a0.f64994d;
        this.f64994d = c23773o;
        this.f64996f = abstractC23425a0.f64996f;
        this.f64997g = abstractC23425a0.f64997g;
        AbstractC23890n<Object> abstractC23890n2 = abstractC23425a0.f64998h;
        this.f64998h = abstractC23890n2;
        this.f64999i = abstractC23425a0.f64999i;
        this.f65002l = abstractC23890n2 == abstractC23890n;
        this.f64992b = c23957y.f65077f;
        this.f64995e = c23957y.f65078g;
        C23795m c23795m = c23773o.f65873b.get();
        if (c23795m == null) {
            synchronized (c23773o) {
                C23795m c23795m2 = c23773o.f65873b.get();
                c23795m = c23795m2;
                if (c23795m2 == null) {
                    c23795m = new C23795m(c23773o.f65872a);
                    c23773o.f65873b.set(c23795m);
                }
            }
        }
        this.f65000j = c23795m;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23890n<java.lang.Object> m6899A(java.lang.Class<?> r8, boolean r9, p193e.p1545k.p1546a.p1556c.AbstractC23462d r10) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.AbstractC23425a0.m6899A(java.lang.Class, boolean, e.k.a.c.d):e.k.a.c.n");
    }

    /* renamed from: B */
    public AbstractC23890n<Object> m6898B(AbstractC23698i abstractC23698i) throws C23733k {
        AbstractC23890n<Object> m6059a = this.f65000j.m6059a(abstractC23698i);
        AbstractC23890n<Object> abstractC23890n = m6059a;
        if (m6059a == null) {
            AbstractC23890n<Object> m6089a = this.f64994d.m6089a(abstractC23698i);
            abstractC23890n = m6089a;
            if (m6089a == null) {
                AbstractC23890n<Object> m6885o = m6885o(abstractC23698i);
                abstractC23890n = m6885o;
                if (m6885o == null) {
                    abstractC23890n = m6893G(abstractC23698i.f65728a);
                }
            }
        }
        return abstractC23890n;
    }

    /* renamed from: C */
    public AbstractC23890n<Object> m6897C(AbstractC23698i abstractC23698i, AbstractC23462d abstractC23462d) throws C23733k {
        if (abstractC23698i == null) {
            m6886P("Null passed for `valueType` of `findValueSerializer()`", new Object[0]);
            throw null;
        }
        AbstractC23890n<Object> m6059a = this.f65000j.m6059a(abstractC23698i);
        AbstractC23890n<Object> abstractC23890n = m6059a;
        if (m6059a == null) {
            AbstractC23890n<Object> m6089a = this.f64994d.m6089a(abstractC23698i);
            abstractC23890n = m6089a;
            if (m6089a == null) {
                AbstractC23890n<Object> m6885o = m6885o(abstractC23698i);
                abstractC23890n = m6885o;
                if (m6885o == null) {
                    return m6893G(abstractC23698i.f65728a);
                }
            }
        }
        return m6891I(abstractC23890n, abstractC23462d);
    }

    /* renamed from: D */
    public AbstractC23890n<Object> m6896D(Class<?> cls, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<Object> m6058b = this.f65000j.m6058b(cls);
        AbstractC23890n<Object> abstractC23890n = m6058b;
        if (m6058b == null) {
            AbstractC23890n<Object> m6088b = this.f64994d.m6088b(cls);
            abstractC23890n = m6088b;
            if (m6088b == null) {
                AbstractC23890n<Object> m6089a = this.f64994d.m6089a(this.f64991a.f65071b.f65022a.m5914b(null, cls, C23887o.f66073e));
                abstractC23890n = m6089a;
                if (m6089a == null) {
                    AbstractC23890n<Object> m6884p = m6884p(cls);
                    abstractC23890n = m6884p;
                    if (m6884p == null) {
                        return m6893G(cls);
                    }
                }
            }
        }
        return m6891I(abstractC23890n, abstractC23462d);
    }

    /* renamed from: E */
    public final AbstractC23426b m6895E() {
        return this.f64991a.m6864e();
    }

    /* renamed from: F */
    public Object m6894F(Object obj) {
        Object obj2;
        Object obj3;
        AbstractC23455i.C23456a c23456a = (AbstractC23455i.C23456a) this.f64995e;
        Map<Object, Object> map = c23456a.f65064b;
        if (map == null || (obj3 = map.get(obj)) == null) {
            obj2 = c23456a.f65063a.get(obj);
        } else {
            obj2 = obj3;
            if (obj3 == AbstractC23455i.C23456a.f65062d) {
                obj2 = null;
            }
        }
        return obj2;
    }

    /* renamed from: G */
    public AbstractC23890n<Object> m6893G(Class<?> cls) {
        return cls == Object.class ? this.f64996f : new C23800q(cls);
    }

    /* renamed from: H */
    public AbstractC23890n<?> m6892H(AbstractC23890n<?> abstractC23890n, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<?> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n != null) {
            abstractC23890n2 = abstractC23890n;
            if (abstractC23890n instanceof AbstractC23766i) {
                abstractC23890n2 = ((AbstractC23766i) abstractC23890n).mo5992b(this, abstractC23462d);
            }
        }
        return abstractC23890n2;
    }

    /* renamed from: I */
    public AbstractC23890n<?> m6891I(AbstractC23890n<?> abstractC23890n, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<?> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n != null) {
            abstractC23890n2 = abstractC23890n;
            if (abstractC23890n instanceof AbstractC23766i) {
                abstractC23890n2 = ((AbstractC23766i) abstractC23890n).mo5992b(this, abstractC23462d);
            }
        }
        return abstractC23890n2;
    }

    /* renamed from: J */
    public abstract Object mo6099J(AbstractC23681s abstractC23681s, Class<?> cls) throws C23733k;

    /* renamed from: K */
    public abstract boolean mo6098K(Object obj) throws C23733k;

    /* renamed from: L */
    public final boolean m6890L(EnumC23942p enumC23942p) {
        return this.f64991a.m6859o(enumC23942p);
    }

    /* renamed from: M */
    public final boolean m6889M(EnumC23958z enumC23958z) {
        return this.f64991a.m5650w(enumC23958z);
    }

    /* renamed from: N */
    public <T> T m6888N(AbstractC23444c abstractC23444c, AbstractC23681s abstractC23681s, String str, Object... objArr) throws C23733k {
        String m6529b = m6529b(str, objArr);
        String str2 = "N/A";
        String m6528c = abstractC23681s != null ? m6528c(abstractC23681s.getName()) : "N/A";
        if (abstractC23444c != null) {
            str2 = C23914g.m5776E(abstractC23444c.f65020a.f65728a);
        }
        throw new C23616b(((AbstractC23767j) this).f65865q, String.format("Invalid definition for property %s (of type %s): %s", m6528c, str2, m6529b), abstractC23444c, abstractC23681s);
    }

    /* renamed from: O */
    public <T> T m6887O(AbstractC23444c abstractC23444c, String str, Object... objArr) throws C23733k {
        throw new C23616b(((AbstractC23767j) this).f65865q, String.format("Invalid type definition for type %s: %s", C23914g.m5776E(abstractC23444c.f65020a.f65728a), m6529b(str, objArr)), abstractC23444c, (AbstractC23681s) null);
    }

    /* renamed from: P */
    public void m6886P(String str, Object... objArr) throws C23733k {
        throw new C23733k(((AbstractC23767j) this).f65865q, m6529b(str, objArr), (Throwable) null);
    }

    /* renamed from: Q */
    public abstract AbstractC23890n<Object> mo6097Q(AbstractC23636b abstractC23636b, Object obj) throws C23733k;

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23614e
    /* renamed from: h */
    public AbstractC23458k mo6472h() {
        return this.f64991a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23614e
    /* renamed from: i */
    public final C23887o mo6470i() {
        return this.f64991a.f65071b.f65022a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23614e
    /* renamed from: j */
    public C23733k mo6468j(AbstractC23698i abstractC23698i, String str, String str2) {
        return new C23619e(null, m6530a(String.format("Could not resolve type id '%s' as a subtype of %s", str, C23914g.m5747t(abstractC23698i)), str2), abstractC23698i, str);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23614e
    /* renamed from: m */
    public <T> T mo6466m(AbstractC23698i abstractC23698i, String str) throws C23733k {
        throw new C23616b(((AbstractC23767j) this).f65865q, str, abstractC23698i);
    }

    /* renamed from: o */
    public AbstractC23890n<Object> m6885o(AbstractC23698i abstractC23698i) throws C23733k {
        try {
            AbstractC23890n<Object> m6883q = m6883q(abstractC23698i);
            if (m6883q != null) {
                C23773o c23773o = this.f64994d;
                synchronized (c23773o) {
                    if (c23773o.f65872a.put(new C23907c0(abstractC23698i, false), m6883q) == null) {
                        c23773o.f65873b.set(null);
                    }
                    if (m6883q instanceof AbstractC23772n) {
                        ((AbstractC23772n) m6883q).mo6025a(this);
                    }
                }
            }
            return m6883q;
        } catch (IllegalArgumentException e) {
            throw new C23733k(((AbstractC23767j) this).f65865q, m6529b(C23914g.m5757j(e), new Object[0]), e);
        }
    }

    /* renamed from: p */
    public AbstractC23890n<Object> m6884p(Class<?> cls) throws C23733k {
        AbstractC23698i m5914b = this.f64991a.f65071b.f65022a.m5914b(null, cls, C23887o.f66073e);
        try {
            AbstractC23890n<Object> m6883q = m6883q(m5914b);
            if (m6883q != null) {
                C23773o c23773o = this.f64994d;
                synchronized (c23773o) {
                    AbstractC23890n<Object> put = c23773o.f65872a.put(new C23907c0(cls, false), m6883q);
                    AbstractC23890n<Object> put2 = c23773o.f65872a.put(new C23907c0(m5914b, false), m6883q);
                    if (put == null || put2 == null) {
                        c23773o.f65873b.set(null);
                    }
                    if (m6883q instanceof AbstractC23772n) {
                        ((AbstractC23772n) m6883q).mo6025a(this);
                    }
                }
            }
            return m6883q;
        } catch (IllegalArgumentException e) {
            throw new C23733k(((AbstractC23767j) this).f65865q, m6529b(C23914g.m5757j(e), new Object[0]), e);
        }
    }

    /* renamed from: q */
    public AbstractC23890n<Object> m6883q(AbstractC23698i abstractC23698i) throws C23733k {
        AbstractC23890n<?> abstractC23890n;
        AbstractC23698i mo6262r0;
        AbstractC23444c abstractC23444c;
        C23763f c23763f = (C23763f) this.f64993c;
        Objects.requireNonNull(c23763f);
        C23957y c23957y = this.f64991a;
        AbstractC23444c m5651v = c23957y.m5651v(abstractC23698i);
        AbstractC23890n<?> m6110e = c23763f.m6110e(this, ((C23679q) m5651v).f65652e);
        if (m6110e != null) {
            abstractC23890n = m6110e;
        } else {
            AbstractC23426b m6864e = c23957y.m6864e();
            boolean z = false;
            if (m6864e == null) {
                mo6262r0 = abstractC23698i;
            } else {
                try {
                    mo6262r0 = m6864e.mo6262r0(c23957y, ((C23679q) m5651v).f65652e, abstractC23698i);
                } catch (C23733k e) {
                    m6887O(m5651v, e.getMessage(), new Object[0]);
                    throw null;
                }
            }
            if (mo6262r0 == abstractC23698i) {
                abstractC23444c = m5651v;
            } else {
                if (!mo6262r0.m6234u(abstractC23698i.f65728a)) {
                    m5651v = c23957y.m5651v(mo6262r0);
                }
                z = true;
                abstractC23444c = m5651v;
            }
            C23679q c23679q = (C23679q) abstractC23444c;
            AbstractC23426b abstractC23426b = c23679q.f65651d;
            AbstractC23918i<Object, Object> m6353g = abstractC23426b == null ? null : c23679q.m6353g(abstractC23426b.mo6305R(c23679q.f65652e));
            if (m6353g == null) {
                abstractC23890n = c23763f.m6101h(this, mo6262r0, abstractC23444c, z);
            } else {
                AbstractC23698i mo5736b = m6353g.mo5736b(mo6470i());
                AbstractC23444c abstractC23444c2 = abstractC23444c;
                AbstractC23890n<?> abstractC23890n2 = m6110e;
                if (!mo5736b.m6234u(mo6262r0.f65728a)) {
                    abstractC23444c2 = c23957y.m5651v(mo5736b);
                    abstractC23890n2 = c23763f.m6110e(this, ((C23679q) abstractC23444c2).f65652e);
                }
                AbstractC23890n<?> abstractC23890n3 = abstractC23890n2;
                if (abstractC23890n2 == null) {
                    abstractC23890n3 = abstractC23890n2;
                    if (!mo5736b.m6240E()) {
                        abstractC23890n3 = c23763f.m6101h(this, mo5736b, abstractC23444c2, true);
                    }
                }
                abstractC23890n = new C23833j0(m6353g, mo5736b, abstractC23890n3);
            }
        }
        return abstractC23890n;
    }

    /* renamed from: r */
    public final DateFormat m6882r() {
        DateFormat dateFormat = this.f65001k;
        if (dateFormat != null) {
            return dateFormat;
        }
        DateFormat dateFormat2 = (DateFormat) this.f64991a.f65071b.f65029h.clone();
        this.f65001k = dateFormat2;
        return dateFormat2;
    }

    /* renamed from: s */
    public AbstractC23698i m6881s(AbstractC23698i abstractC23698i, Class<?> cls) throws IllegalArgumentException {
        return abstractC23698i.f65728a == cls ? abstractC23698i : this.f64991a.f65071b.f65022a.m5905k(abstractC23698i, cls, true);
    }

    /* renamed from: t */
    public final void m6880t(AbstractC23372g abstractC23372g) throws IOException {
        if (this.f65002l) {
            abstractC23372g.mo5888D0();
        } else {
            this.f64998h.mo5894f(null, abstractC23372g, this);
        }
    }

    /* renamed from: u */
    public AbstractC23890n<Object> m6879u(AbstractC23698i abstractC23698i, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<Object> m6059a = this.f65000j.m6059a(abstractC23698i);
        AbstractC23890n<Object> abstractC23890n = m6059a;
        if (m6059a == null) {
            AbstractC23890n<Object> m6089a = this.f64994d.m6089a(abstractC23698i);
            abstractC23890n = m6089a;
            if (m6089a == null) {
                AbstractC23890n<Object> m6885o = m6885o(abstractC23698i);
                abstractC23890n = m6885o;
                if (m6885o == null) {
                    return m6893G(abstractC23698i.f65728a);
                }
            }
        }
        return m6891I(abstractC23890n, abstractC23462d);
    }

    /* renamed from: v */
    public AbstractC23890n<Object> m6878v(Class<?> cls, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<Object> m6058b = this.f65000j.m6058b(cls);
        AbstractC23890n<Object> abstractC23890n = m6058b;
        if (m6058b == null) {
            AbstractC23890n<Object> m6088b = this.f64994d.m6088b(cls);
            abstractC23890n = m6088b;
            if (m6088b == null) {
                AbstractC23890n<Object> m6089a = this.f64994d.m6089a(this.f64991a.f65071b.f65022a.m5914b(null, cls, C23887o.f66073e));
                abstractC23890n = m6089a;
                if (m6089a == null) {
                    AbstractC23890n<Object> m6884p = m6884p(cls);
                    abstractC23890n = m6884p;
                    if (m6884p == null) {
                        return m6893G(cls);
                    }
                }
            }
        }
        return m6891I(abstractC23890n, abstractC23462d);
    }

    /* renamed from: w */
    public AbstractC23890n<Object> m6877w(AbstractC23698i abstractC23698i, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<Object> mo6087a = this.f64993c.mo6087a(this, abstractC23698i, this.f64997g);
        if (mo6087a instanceof AbstractC23772n) {
            ((AbstractC23772n) mo6087a).mo6025a(this);
        }
        return m6891I(mo6087a, abstractC23462d);
    }

    /* renamed from: x */
    public abstract C23804u mo6091x(Object obj, AbstractC23316k0<?> abstractC23316k0);

    /* renamed from: y */
    public AbstractC23890n<Object> m6876y(AbstractC23698i abstractC23698i, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<Object> m6059a = this.f65000j.m6059a(abstractC23698i);
        AbstractC23890n<Object> abstractC23890n = m6059a;
        if (m6059a == null) {
            AbstractC23890n<Object> m6089a = this.f64994d.m6089a(abstractC23698i);
            abstractC23890n = m6089a;
            if (m6089a == null) {
                AbstractC23890n<Object> m6885o = m6885o(abstractC23698i);
                abstractC23890n = m6885o;
                if (m6885o == null) {
                    return m6893G(abstractC23698i.f65728a);
                }
            }
        }
        return m6892H(abstractC23890n, abstractC23462d);
    }

    /* renamed from: z */
    public AbstractC23890n<Object> m6875z(Class<?> cls, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<Object> m6058b = this.f65000j.m6058b(cls);
        AbstractC23890n<Object> abstractC23890n = m6058b;
        if (m6058b == null) {
            AbstractC23890n<Object> m6088b = this.f64994d.m6088b(cls);
            abstractC23890n = m6088b;
            if (m6088b == null) {
                AbstractC23890n<Object> m6089a = this.f64994d.m6089a(this.f64991a.f65071b.f65022a.m5914b(null, cls, C23887o.f66073e));
                abstractC23890n = m6089a;
                if (m6089a == null) {
                    AbstractC23890n<Object> m6884p = m6884p(cls);
                    abstractC23890n = m6884p;
                    if (m6884p == null) {
                        return m6893G(cls);
                    }
                }
            }
        }
        return m6892H(abstractC23890n, abstractC23462d);
    }
}
