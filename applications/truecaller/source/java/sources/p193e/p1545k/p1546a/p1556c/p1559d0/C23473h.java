package p193e.p1545k.p1546a.p1556c.p1559d0;

import java.io.IOException;
import java.util.Map;
import java.util.Set;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23446b;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.AbstractC23495a0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23494a;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23500b0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23501c;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23511g;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23531v;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23535y;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0;
/* renamed from: e.k.a.c.d0.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/h.class */
public class C23473h extends AbstractC23469d {

    /* renamed from: y */
    public final C23664j f65148y;

    /* renamed from: z */
    public final AbstractC23698i f65149z;

    public C23473h(C23470e c23470e, AbstractC23444c abstractC23444c, AbstractC23698i abstractC23698i, C23501c c23501c, Map<String, AbstractC23488u> map, Set<String> set, boolean z, Set<String> set2, boolean z2) {
        super(c23470e, abstractC23444c, c23501c, map, set, z, set2, z2);
        this.f65149z = abstractC23698i;
        this.f65148y = c23470e.f65145m;
        if (this.f65132w == null) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("Cannot use Object Id with Builder-based deserialization (type ");
        m8728C.append(abstractC23444c.f65020a);
        m8728C.append(")");
        throw new IllegalArgumentException(m8728C.toString());
    }

    public C23473h(C23473h c23473h, C23501c c23501c) {
        super(c23473h, c23501c);
        this.f65148y = c23473h.f65148y;
        this.f65149z = c23473h.f65149z;
    }

    public C23473h(C23473h c23473h, C23531v c23531v) {
        super(c23473h, c23531v);
        this.f65148y = c23473h.f65148y;
        this.f65149z = c23473h.f65149z;
    }

    public C23473h(C23473h c23473h, AbstractC23929s abstractC23929s) {
        super(c23473h, abstractC23929s);
        this.f65148y = c23473h.f65148y;
        this.f65149z = c23473h.f65149z;
    }

    public C23473h(C23473h c23473h, Set<String> set, Set<String> set2) {
        super(c23473h, set, set2);
        this.f65148y = c23473h.f65148y;
        this.f65149z = c23473h.f65149z;
    }

    public C23473h(C23473h c23473h, boolean z) {
        super(c23473h, z);
        this.f65148y = c23473h.f65148y;
        this.f65149z = c23473h.f65149z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0
    /* renamed from: A */
    public Object mo6676A(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        AbstractC23700j<Object> abstractC23700j = this.f65117h;
        AbstractC23700j<Object> abstractC23700j2 = abstractC23700j;
        if (abstractC23700j == null) {
            abstractC23700j2 = this.f65116g;
            if (abstractC23700j2 == null) {
                EnumC23446b m6673D = m6673D(abstractC23632g);
                boolean m6488R = abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS);
                if (m6488R || m6673D != EnumC23446b.Fail) {
                    EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                    EnumC23381m enumC23381m = EnumC23381m.END_ARRAY;
                    if (mo5811i2 == enumC23381m) {
                        int ordinal = m6673D.ordinal();
                        if (ordinal == 1 || ordinal == 2) {
                            return null;
                        }
                        if (ordinal == 3) {
                            return mo6226j(abstractC23632g);
                        }
                        AbstractC23698i abstractC23698i = this.f65310b;
                        if (abstractC23698i == null) {
                            abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                        }
                        abstractC23632g.m6497I(abstractC23698i, EnumC23381m.START_ARRAY, abstractC23376j, null, new Object[0]);
                        throw null;
                    } else if (m6488R) {
                        Object mo6232d = mo6232d(abstractC23376j, abstractC23632g);
                        if (abstractC23376j.mo5811i2() == enumC23381m) {
                            return mo6232d;
                        }
                        m6643k0(abstractC23632g);
                        throw null;
                    }
                }
                AbstractC23698i abstractC23698i2 = this.f65310b;
                if (abstractC23698i2 == null) {
                    abstractC23698i2 = abstractC23632g.m6465o(this.f65309a);
                }
                abstractC23632g.m6498H(abstractC23698i2, abstractC23376j);
                throw null;
            }
        }
        Object mo6597u = this.f65115f.mo6597u(abstractC23632g, abstractC23700j2.mo6232d(abstractC23376j, abstractC23632g));
        if (this.f65122m != null) {
            m6823C0(abstractC23632g, mo6597u);
        }
        return m6791N0(abstractC23632g, mo6597u);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: D0 */
    public AbstractC23469d mo6741D0(C23501c c23501c) {
        return new C23473h(this, c23501c);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: E0 */
    public AbstractC23469d mo6740E0(Set<String> set, Set<String> set2) {
        return new C23473h(this, set, set2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: F0 */
    public AbstractC23469d mo6739F0(boolean z) {
        return new C23473h(this, z);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: G0 */
    public AbstractC23469d mo6738G0(C23531v c23531v) {
        return new C23473h(this, c23531v);
    }

    /* renamed from: J0 */
    public Object m6795J0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        Object obj;
        Object obj2;
        if (!this.f65119j) {
            Object mo6596v = this.f65115f.mo6596v(abstractC23632g);
            if (this.f65122m != null) {
                m6823C0(abstractC23632g, mo6596v);
            }
            Object obj3 = mo6596v;
            if (this.f65127r) {
                Class<?> cls = abstractC23632g.f65504f;
                obj3 = mo6596v;
                if (cls != null) {
                    return m6792M0(abstractC23376j, abstractC23632g, mo6596v, cls);
                }
            }
            while (abstractC23376j.mo7142l() == EnumC23381m.FIELD_NAME) {
                String mo5809k = abstractC23376j.mo5809k();
                abstractC23376j.mo5811i2();
                AbstractC23488u m6726e = this.f65121l.m6726e(mo5809k);
                if (m6726e != null) {
                    try {
                        obj3 = m6726e.mo6681j(abstractC23376j, abstractC23632g, obj3);
                    } catch (Exception e) {
                        m6822H0(e, obj3, mo5809k, abstractC23632g);
                        throw null;
                    }
                } else {
                    m6824B0(abstractC23376j, abstractC23632g, obj3, mo5809k);
                }
                abstractC23376j.mo5811i2();
            }
            return obj3;
        } else if (this.f65130u == null) {
            if (this.f65131v == null) {
                return m6812w0(abstractC23376j, abstractC23632g);
            }
            if (this.f65118i == null) {
                return m6794K0(abstractC23376j, abstractC23632g, this.f65115f.mo6596v(abstractC23632g));
            }
            AbstractC23698i abstractC23698i = this.f65149z;
            abstractC23632g.mo6466m(abstractC23698i, String.format("Deserialization (of %s) with Builder, External type id, @JsonCreator not yet implemented", abstractC23698i));
            throw null;
        } else {
            AbstractC23700j<Object> abstractC23700j = this.f65116g;
            if (abstractC23700j != null) {
                obj = this.f65115f.mo6595w(abstractC23632g, abstractC23700j.mo6232d(abstractC23376j, abstractC23632g));
            } else {
                C23535y c23535y = this.f65118i;
                if (c23535y != null) {
                    C23500b0 c23500b0 = new C23500b0(abstractC23376j, abstractC23632g, c23535y.f65300a, this.f65132w);
                    C23893a0 c23893a0 = new C23893a0(abstractC23376j, abstractC23632g);
                    c23893a0.mo5875M1();
                    EnumC23381m mo7142l = abstractC23376j.mo7142l();
                    while (true) {
                        if (mo7142l != EnumC23381m.FIELD_NAME) {
                            c23893a0.mo5840t0();
                            try {
                                obj = c23535y.m6679a(abstractC23632g, c23500b0);
                                this.f65130u.m6697a(abstractC23632g, obj, c23893a0);
                                break;
                            } catch (Exception e2) {
                                m6821I0(e2, abstractC23632g);
                                throw null;
                            }
                        }
                        String mo5809k2 = abstractC23376j.mo5809k();
                        abstractC23376j.mo5811i2();
                        AbstractC23488u m6677c = c23535y.m6677c(mo5809k2);
                        if (!c23500b0.m6731d(mo5809k2) || m6677c != null) {
                            if (m6677c == null) {
                                AbstractC23488u m6726e2 = this.f65121l.m6726e(mo5809k2);
                                if (m6726e2 != null) {
                                    c23500b0.f65204h = new AbstractC23495a0.C23498c(c23500b0.f65204h, m6726e2.m6762h(abstractC23376j, abstractC23632g), m6726e2);
                                } else if (C26232y.m2406U1(mo5809k2, this.f65124o, this.f65125p)) {
                                    m6810y0(abstractC23376j, abstractC23632g, this.f65113d.f65728a, mo5809k2);
                                } else {
                                    c23893a0.f66116q.m7061q(mo5809k2);
                                    c23893a0.m5860h2(mo5809k2);
                                    c23893a0.m5890A2(abstractC23376j);
                                    C23486t c23486t = this.f65123n;
                                    if (c23486t != null) {
                                        c23500b0.m6732c(c23486t, mo5809k2, c23486t.m6768a(abstractC23376j, abstractC23632g));
                                    }
                                }
                            } else if (c23500b0.m6733b(m6677c, m6677c.m6762h(abstractC23376j, abstractC23632g))) {
                                abstractC23376j.mo5811i2();
                                try {
                                    Object m6679a = c23535y.m6679a(abstractC23632g, c23500b0);
                                    obj = m6679a.getClass() != this.f65113d.f65728a ? m6809z0(abstractC23376j, abstractC23632g, m6679a, c23893a0) : m6793L0(abstractC23376j, abstractC23632g, m6679a, c23893a0);
                                } catch (Exception e3) {
                                    m6822H0(e3, this.f65113d.f65728a, mo5809k2, abstractC23632g);
                                    throw null;
                                }
                            }
                        }
                        mo7142l = abstractC23376j.mo5811i2();
                    }
                } else {
                    C23893a0 c23893a02 = new C23893a0(abstractC23376j, abstractC23632g);
                    c23893a02.mo5875M1();
                    Object mo6596v2 = this.f65115f.mo6596v(abstractC23632g);
                    if (this.f65122m != null) {
                        m6823C0(abstractC23632g, mo6596v2);
                    }
                    Class<?> cls2 = this.f65127r ? abstractC23632g.f65504f : null;
                    while (abstractC23376j.mo7142l() == EnumC23381m.FIELD_NAME) {
                        String mo5809k3 = abstractC23376j.mo5809k();
                        abstractC23376j.mo5811i2();
                        AbstractC23488u m6726e3 = this.f65121l.m6726e(mo5809k3);
                        if (m6726e3 != null) {
                            if (cls2 == null || m6726e3.mo6758C(cls2)) {
                                try {
                                    obj2 = m6726e3.mo6681j(abstractC23376j, abstractC23632g, mo6596v2);
                                } catch (Exception e4) {
                                    m6822H0(e4, mo6596v2, mo5809k3, abstractC23632g);
                                    throw null;
                                }
                            } else {
                                abstractC23376j.mo7139w2();
                                obj2 = mo6596v2;
                            }
                        } else if (C26232y.m2406U1(mo5809k3, this.f65124o, this.f65125p)) {
                            m6810y0(abstractC23376j, abstractC23632g, mo6596v2, mo5809k3);
                            obj2 = mo6596v2;
                        } else {
                            c23893a02.f66116q.m7061q(mo5809k3);
                            c23893a02.m5860h2(mo5809k3);
                            c23893a02.m5890A2(abstractC23376j);
                            C23486t c23486t2 = this.f65123n;
                            obj2 = mo6596v2;
                            if (c23486t2 != null) {
                                try {
                                    c23486t2.m6767b(abstractC23376j, abstractC23632g, mo6596v2, mo5809k3);
                                    obj2 = mo6596v2;
                                } catch (Exception e5) {
                                    m6822H0(e5, mo6596v2, mo5809k3, abstractC23632g);
                                    throw null;
                                }
                            } else {
                                continue;
                            }
                        }
                        abstractC23376j.mo5811i2();
                        mo6596v2 = obj2;
                    }
                    c23893a02.mo5840t0();
                    this.f65130u.m6697a(abstractC23632g, mo6596v2, c23893a02);
                    obj = mo6596v2;
                }
            }
            return obj;
        }
    }

    /* renamed from: K0 */
    public Object m6794K0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        Class<?> cls = this.f65127r ? abstractC23632g.f65504f : null;
        C23511g c23511g = new C23511g(this.f65131v);
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        while (mo7142l == EnumC23381m.FIELD_NAME) {
            String mo5809k = abstractC23376j.mo5809k();
            EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
            AbstractC23488u m6726e = this.f65121l.m6726e(mo5809k);
            if (m6726e != null) {
                if (mo5811i2.f64711h) {
                    c23511g.m6700f(abstractC23376j, abstractC23632g, mo5809k, obj);
                }
                if (cls == null || m6726e.mo6758C(cls)) {
                    try {
                        obj = m6726e.mo6681j(abstractC23376j, abstractC23632g, obj);
                    } catch (Exception e) {
                        m6822H0(e, obj, mo5809k, abstractC23632g);
                        throw null;
                    }
                } else {
                    abstractC23376j.mo7139w2();
                }
            } else if (C26232y.m2406U1(mo5809k, this.f65124o, this.f65125p)) {
                m6810y0(abstractC23376j, abstractC23632g, obj, mo5809k);
            } else if (!c23511g.m6701e(abstractC23376j, abstractC23632g, mo5809k, obj)) {
                C23486t c23486t = this.f65123n;
                if (c23486t != null) {
                    try {
                        c23486t.m6767b(abstractC23376j, abstractC23632g, obj, mo5809k);
                    } catch (Exception e2) {
                        m6822H0(e2, obj, mo5809k, abstractC23632g);
                        throw null;
                    }
                } else {
                    mo6642l0(abstractC23376j, abstractC23632g, obj, mo5809k);
                }
            } else {
                continue;
            }
            mo7142l = abstractC23376j.mo5811i2();
        }
        c23511g.m6702d(abstractC23376j, abstractC23632g, obj);
        return obj;
    }

    /* renamed from: L0 */
    public Object m6793L0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj, C23893a0 c23893a0) throws IOException {
        Object obj2;
        Class<?> cls = this.f65127r ? abstractC23632g.f65504f : null;
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        while (mo7142l == EnumC23381m.FIELD_NAME) {
            String mo5809k = abstractC23376j.mo5809k();
            AbstractC23488u m6726e = this.f65121l.m6726e(mo5809k);
            abstractC23376j.mo5811i2();
            if (m6726e != null) {
                if (cls == null || m6726e.mo6758C(cls)) {
                    try {
                        obj2 = m6726e.mo6681j(abstractC23376j, abstractC23632g, obj);
                    } catch (Exception e) {
                        m6822H0(e, obj, mo5809k, abstractC23632g);
                        throw null;
                    }
                } else {
                    abstractC23376j.mo7139w2();
                    obj2 = obj;
                }
            } else if (C26232y.m2406U1(mo5809k, this.f65124o, this.f65125p)) {
                m6810y0(abstractC23376j, abstractC23632g, obj, mo5809k);
                obj2 = obj;
            } else {
                c23893a0.f66116q.m7061q(mo5809k);
                c23893a0.m5860h2(mo5809k);
                c23893a0.m5890A2(abstractC23376j);
                C23486t c23486t = this.f65123n;
                obj2 = obj;
                if (c23486t != null) {
                    c23486t.m6767b(abstractC23376j, abstractC23632g, obj, mo5809k);
                    obj2 = obj;
                }
            }
            mo7142l = abstractC23376j.mo5811i2();
            obj = obj2;
        }
        c23893a0.mo5840t0();
        this.f65130u.m6697a(abstractC23632g, obj, c23893a0);
        return obj;
    }

    /* renamed from: M0 */
    public final Object m6792M0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj, Class<?> cls) throws IOException {
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        while (mo7142l == EnumC23381m.FIELD_NAME) {
            String mo5809k = abstractC23376j.mo5809k();
            abstractC23376j.mo5811i2();
            AbstractC23488u m6726e = this.f65121l.m6726e(mo5809k);
            if (m6726e == null) {
                m6824B0(abstractC23376j, abstractC23632g, obj, mo5809k);
            } else if (!m6726e.mo6758C(cls)) {
                abstractC23376j.mo7139w2();
            } else {
                try {
                    obj = m6726e.mo6681j(abstractC23376j, abstractC23632g, obj);
                } catch (Exception e) {
                    m6822H0(e, obj, mo5809k, abstractC23632g);
                    throw null;
                }
            }
            mo7142l = abstractC23376j.mo5811i2();
        }
        return obj;
    }

    /* renamed from: N0 */
    public Object m6791N0(AbstractC23632g abstractC23632g, Object obj) throws IOException {
        C23664j c23664j = this.f65148y;
        if (c23664j == null) {
            return obj;
        }
        try {
            return c23664j.f65619d.invoke(obj, null);
        } catch (Exception e) {
            m6821I0(e, abstractC23632g);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        if (!abstractC23376j.mo7144Y1()) {
            switch (abstractC23376j.mo7140q()) {
                case 2:
                case 5:
                    return m6791N0(abstractC23632g, m6795J0(abstractC23376j, abstractC23632g));
                case 3:
                    return mo6676A(abstractC23376j, abstractC23632g);
                case 4:
                case 11:
                default:
                    AbstractC23698i abstractC23698i = this.f65310b;
                    if (abstractC23698i == null) {
                        abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                    }
                    abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                    throw null;
                case 6:
                    return m6791N0(abstractC23632g, m6811x0(abstractC23376j, abstractC23632g));
                case 7:
                    return m6791N0(abstractC23632g, m6814u0(abstractC23376j, abstractC23632g));
                case 8:
                    return m6791N0(abstractC23632g, m6815t0(abstractC23376j, abstractC23632g));
                case 9:
                case 10:
                    return m6791N0(abstractC23632g, m6816s0(abstractC23376j, abstractC23632g));
                case 12:
                    return abstractC23376j.mo5803p0();
            }
        }
        abstractC23376j.mo5811i2();
        if (!this.f65120k) {
            return m6791N0(abstractC23632g, m6795J0(abstractC23376j, abstractC23632g));
        }
        Object mo6596v = this.f65115f.mo6596v(abstractC23632g);
        while (abstractC23376j.mo7142l() == EnumC23381m.FIELD_NAME) {
            String mo5809k = abstractC23376j.mo5809k();
            abstractC23376j.mo5811i2();
            AbstractC23488u m6726e = this.f65121l.m6726e(mo5809k);
            if (m6726e != null) {
                try {
                    mo6596v = m6726e.mo6681j(abstractC23376j, abstractC23632g, mo6596v);
                } catch (Exception e) {
                    m6822H0(e, mo6596v, mo5809k, abstractC23632g);
                    throw null;
                }
            } else {
                m6824B0(abstractC23376j, abstractC23632g, mo6596v, mo5809k);
            }
            abstractC23376j.mo5811i2();
        }
        return m6791N0(abstractC23632g, mo6596v);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        AbstractC23698i abstractC23698i = this.f65149z;
        Class<?> cls = this.f65113d.f65728a;
        Class<?> cls2 = obj.getClass();
        if (cls.isAssignableFrom(cls2)) {
            abstractC23632g.mo6466m(abstractC23698i, String.format("Deserialization of %s by passing existing Builder (%s) instance not supported", abstractC23698i, cls.getName()));
            throw null;
        }
        abstractC23632g.mo6466m(abstractC23698i, String.format("Deserialization of %s by passing existing instance (of %s) not supported", abstractC23698i, cls2.getName()));
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: n0 */
    public Object mo6736n0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        C23893a0 c23893a0;
        Object obj;
        Class<?> cls;
        C23535y c23535y = this.f65118i;
        C23500b0 c23500b0 = new C23500b0(abstractC23376j, abstractC23632g, c23535y.f65300a, this.f65132w);
        Class<?> cls2 = this.f65127r ? abstractC23632g.f65504f : null;
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        C23893a0 c23893a02 = null;
        while (true) {
            C23893a0 c23893a03 = c23893a02;
            if (mo7142l != EnumC23381m.FIELD_NAME) {
                try {
                    Object m6679a = c23535y.m6679a(abstractC23632g, c23500b0);
                    if (c23893a03 != null) {
                        if (m6679a.getClass() != this.f65113d.f65728a) {
                            return m6809z0(null, abstractC23632g, m6679a, c23893a03);
                        }
                        m6825A0(abstractC23632g, m6679a, c23893a03);
                    }
                    return m6679a;
                } catch (Exception e) {
                    m6821I0(e, abstractC23632g);
                    throw null;
                }
            }
            String mo5809k = abstractC23376j.mo5809k();
            abstractC23376j.mo5811i2();
            AbstractC23488u m6677c = c23535y.m6677c(mo5809k);
            if (c23500b0.m6731d(mo5809k) && m6677c == null) {
                c23893a0 = c23893a03;
            } else if (m6677c == null) {
                AbstractC23488u m6726e = this.f65121l.m6726e(mo5809k);
                if (m6726e != null) {
                    c23500b0.f65204h = new AbstractC23495a0.C23498c(c23500b0.f65204h, m6726e.m6762h(abstractC23376j, abstractC23632g), m6726e);
                    c23893a0 = c23893a03;
                } else if (C26232y.m2406U1(mo5809k, this.f65124o, this.f65125p)) {
                    m6810y0(abstractC23376j, abstractC23632g, this.f65113d.f65728a, mo5809k);
                    c23893a0 = c23893a03;
                } else {
                    C23486t c23486t = this.f65123n;
                    if (c23486t != null) {
                        c23500b0.m6732c(c23486t, mo5809k, c23486t.m6768a(abstractC23376j, abstractC23632g));
                        c23893a0 = c23893a03;
                    } else {
                        c23893a0 = c23893a03;
                        if (c23893a03 == null) {
                            c23893a0 = new C23893a0(abstractC23376j, abstractC23632g);
                        }
                        c23893a0.f66116q.m7061q(mo5809k);
                        c23893a0.m5860h2(mo5809k);
                        c23893a0.m5890A2(abstractC23376j);
                    }
                }
            } else if (cls2 == null || m6677c.mo6758C(cls2)) {
                c23893a0 = c23893a03;
                if (c23500b0.m6733b(m6677c, m6677c.m6762h(abstractC23376j, abstractC23632g))) {
                    abstractC23376j.mo5811i2();
                    try {
                        Object m6679a2 = c23535y.m6679a(abstractC23632g, c23500b0);
                        if (m6679a2.getClass() != this.f65113d.f65728a) {
                            return m6809z0(abstractC23376j, abstractC23632g, m6679a2, c23893a03);
                        }
                        if (c23893a03 != null) {
                            m6825A0(abstractC23632g, m6679a2, c23893a03);
                        }
                        if (this.f65122m != null) {
                            m6823C0(abstractC23632g, m6679a2);
                        }
                        if (this.f65130u != null) {
                            if (abstractC23376j.mo7150O1(EnumC23381m.START_OBJECT)) {
                                abstractC23376j.mo5811i2();
                            }
                            C23893a0 c23893a04 = new C23893a0(abstractC23376j, abstractC23632g);
                            c23893a04.mo5875M1();
                            obj = m6793L0(abstractC23376j, abstractC23632g, m6679a2, c23893a04);
                        } else if (this.f65131v != null) {
                            obj = m6794K0(abstractC23376j, abstractC23632g, m6679a2);
                        } else if (!this.f65127r || (cls = abstractC23632g.f65504f) == null) {
                            EnumC23381m mo7142l2 = abstractC23376j.mo7142l();
                            Object obj2 = m6679a2;
                            EnumC23381m enumC23381m = mo7142l2;
                            if (mo7142l2 == EnumC23381m.START_OBJECT) {
                                enumC23381m = abstractC23376j.mo5811i2();
                                obj2 = m6679a2;
                            }
                            while (enumC23381m == EnumC23381m.FIELD_NAME) {
                                String mo5809k2 = abstractC23376j.mo5809k();
                                abstractC23376j.mo5811i2();
                                AbstractC23488u m6726e2 = this.f65121l.m6726e(mo5809k2);
                                if (m6726e2 != null) {
                                    try {
                                        obj2 = m6726e2.mo6681j(abstractC23376j, abstractC23632g, obj2);
                                    } catch (Exception e2) {
                                        m6822H0(e2, obj2, mo5809k2, abstractC23632g);
                                        throw null;
                                    }
                                } else {
                                    m6824B0(abstractC23376j, abstractC23632g, obj2, mo5809k2);
                                }
                                enumC23381m = abstractC23376j.mo5811i2();
                            }
                            obj = obj2;
                        } else {
                            obj = m6792M0(abstractC23376j, abstractC23632g, m6679a2, cls);
                        }
                        return obj;
                    } catch (Exception e3) {
                        m6822H0(e3, this.f65113d.f65728a, mo5809k, abstractC23632g);
                        throw null;
                    }
                }
            } else {
                abstractC23376j.mo7139w2();
                c23893a0 = c23893a03;
            }
            mo7142l = abstractC23376j.mo5811i2();
            c23893a02 = c23893a0;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return Boolean.FALSE;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: q */
    public AbstractC23700j<Object> mo6219q(AbstractC23929s abstractC23929s) {
        return new C23473h(this, abstractC23929s);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: r0 */
    public AbstractC23469d mo6735r0() {
        return new C23494a(this, this.f65149z, this.f65121l.f65211f, this.f65148y);
    }
}
