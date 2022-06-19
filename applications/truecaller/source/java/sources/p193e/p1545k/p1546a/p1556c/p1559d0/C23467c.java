package p193e.p1545k.p1546a.p1556c.p1559d0;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1789g0.C26232y;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23446b;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.AbstractC23495a0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23499b;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23500b0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23501c;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23511g;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23531v;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23535y;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23617c;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23924n;
/* renamed from: e.k.a.c.d0.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/c.class */
public class C23467c extends AbstractC23469d implements Serializable {

    /* renamed from: y */
    public transient Exception f65107y;

    /* renamed from: z */
    public volatile transient AbstractC23929s f65108z;

    /* renamed from: e.k.a.c.d0.c$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/c$a.class */
    public static class C23468a extends C23502c0.AbstractC23503a {

        /* renamed from: b */
        public final AbstractC23632g f65109b;

        /* renamed from: c */
        public final AbstractC23488u f65110c;

        /* renamed from: d */
        public Object f65111d;

        public C23468a(AbstractC23632g abstractC23632g, C23490v c23490v, AbstractC23698i abstractC23698i, AbstractC23488u abstractC23488u) {
            super(c23490v, abstractC23698i);
            this.f65109b = abstractC23632g;
            this.f65110c = abstractC23488u;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0.AbstractC23503a
        /* renamed from: a */
        public void mo6544a(Object obj, Object obj2) throws IOException {
            Object obj3 = this.f65111d;
            if (obj3 != null) {
                this.f65110c.mo6680z(obj3, obj2);
                return;
            }
            AbstractC23632g abstractC23632g = this.f65109b;
            AbstractC23488u abstractC23488u = this.f65110c;
            abstractC23632g.m6481Y(abstractC23488u, "Cannot resolve ObjectId forward reference using property '%s' (of type %s): Bean not yet resolved", abstractC23488u.f65171c.f66304a, abstractC23488u.mo6755n().getName());
            throw null;
        }
    }

    public C23467c(AbstractC23469d abstractC23469d) {
        super(abstractC23469d, abstractC23469d.f65126q);
    }

    public C23467c(AbstractC23469d abstractC23469d, C23501c c23501c) {
        super(abstractC23469d, c23501c);
    }

    public C23467c(AbstractC23469d abstractC23469d, C23531v c23531v) {
        super(abstractC23469d, c23531v);
    }

    public C23467c(AbstractC23469d abstractC23469d, AbstractC23929s abstractC23929s) {
        super(abstractC23469d, abstractC23929s);
    }

    public C23467c(AbstractC23469d abstractC23469d, Set<String> set, Set<String> set2) {
        super(abstractC23469d, set, set2);
    }

    public C23467c(AbstractC23469d abstractC23469d, boolean z) {
        super(abstractC23469d, z);
    }

    public C23467c(C23470e c23470e, AbstractC23444c abstractC23444c, C23501c c23501c, Map<String, AbstractC23488u> map, HashSet<String> hashSet, boolean z, Set<String> set, boolean z2) {
        super(c23470e, abstractC23444c, c23501c, map, hashSet, z, set, z2);
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
        return mo6597u;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: D0 */
    public AbstractC23469d mo6741D0(C23501c c23501c) {
        return new C23467c(this, c23501c);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: E0 */
    public AbstractC23469d mo6740E0(Set set, Set set2) {
        return new C23467c(this, set, set2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: F0 */
    public AbstractC23469d mo6739F0(boolean z) {
        return new C23467c(this, z);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: G0 */
    public AbstractC23469d mo6738G0(C23531v c23531v) {
        return new C23467c(this, c23531v);
    }

    /* renamed from: J0 */
    public final Object m6829J0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23488u abstractC23488u) throws IOException {
        try {
            return abstractC23488u.m6762h(abstractC23376j, abstractC23632g);
        } catch (Exception e) {
            m6822H0(e, this.f65113d.f65728a, abstractC23488u.f65171c.f66304a, abstractC23632g);
            throw null;
        }
    }

    /* renamed from: K0 */
    public Object m6828K0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj, C23511g c23511g) throws IOException {
        Class<?> cls = this.f65127r ? abstractC23632g.f65504f : null;
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
                        m6726e.mo6682i(abstractC23376j, abstractC23632g, obj);
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
    public Object mo6579L0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        String mo5813b2;
        Class<?> cls;
        Object mo5825J0;
        Object obj;
        Object obj2;
        C23531v c23531v = this.f65132w;
        if (c23531v != null) {
            c23531v.m6690b();
        }
        if (!this.f65119j) {
            Object mo6596v = this.f65115f.mo6596v(abstractC23632g);
            abstractC23376j.mo7169t2(mo6596v);
            if (abstractC23376j.mo5814b() && (mo5825J0 = abstractC23376j.mo5825J0()) != null) {
                m6818p0(abstractC23376j, abstractC23632g, mo6596v, mo5825J0);
            }
            if (this.f65122m != null) {
                m6823C0(abstractC23632g, mo6596v);
            }
            if (this.f65127r && (cls = abstractC23632g.f65504f) != null) {
                m6827M0(abstractC23376j, abstractC23632g, mo6596v, cls);
                return mo6596v;
            } else if (!abstractC23376j.mo7149R1(5)) {
                return mo6596v;
            } else {
                String mo5809k = abstractC23376j.mo5809k();
                do {
                    abstractC23376j.mo5811i2();
                    AbstractC23488u m6726e = this.f65121l.m6726e(mo5809k);
                    if (m6726e != null) {
                        try {
                            m6726e.mo6682i(abstractC23376j, abstractC23632g, mo6596v);
                        } catch (Exception e) {
                            m6822H0(e, mo6596v, mo5809k, abstractC23632g);
                            throw null;
                        }
                    } else {
                        m6824B0(abstractC23376j, abstractC23632g, mo6596v, mo5809k);
                    }
                    mo5813b2 = abstractC23376j.mo5813b2();
                    mo5809k = mo5813b2;
                } while (mo5813b2 != null);
                return mo6596v;
            }
        } else if (this.f65130u == null) {
            C23511g c23511g = this.f65131v;
            if (c23511g == null) {
                return m6812w0(abstractC23376j, abstractC23632g);
            }
            if (this.f65118i != null) {
                C23511g c23511g2 = new C23511g(c23511g);
                C23535y c23535y = this.f65118i;
                C23500b0 c23500b0 = new C23500b0(abstractC23376j, abstractC23632g, c23535y.f65300a, this.f65132w);
                Class<?> cls2 = this.f65127r ? abstractC23632g.f65504f : null;
                EnumC23381m mo7142l = abstractC23376j.mo7142l();
                while (true) {
                    if (mo7142l != EnumC23381m.FIELD_NAME) {
                        try {
                            obj = c23511g2.m6703c(abstractC23376j, abstractC23632g, c23500b0, c23535y);
                            break;
                        } catch (Exception e2) {
                            m6821I0(e2, abstractC23632g);
                            throw null;
                        }
                    }
                    String mo5809k2 = abstractC23376j.mo5809k();
                    EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                    AbstractC23488u m6677c = c23535y.m6677c(mo5809k2);
                    if (!c23500b0.m6731d(mo5809k2) || m6677c != null) {
                        if (m6677c == null) {
                            AbstractC23488u m6726e2 = this.f65121l.m6726e(mo5809k2);
                            if (m6726e2 != null) {
                                if (mo5811i2.f64711h) {
                                    c23511g2.m6700f(abstractC23376j, abstractC23632g, mo5809k2, null);
                                }
                                if (cls2 == null || m6726e2.mo6758C(cls2)) {
                                    c23500b0.f65204h = new AbstractC23495a0.C23498c(c23500b0.f65204h, m6726e2.m6762h(abstractC23376j, abstractC23632g), m6726e2);
                                } else {
                                    abstractC23376j.mo7139w2();
                                }
                            } else if (!c23511g2.m6701e(abstractC23376j, abstractC23632g, mo5809k2, null)) {
                                if (C26232y.m2406U1(mo5809k2, this.f65124o, this.f65125p)) {
                                    m6810y0(abstractC23376j, abstractC23632g, this.f65113d.f65728a, mo5809k2);
                                } else {
                                    C23486t c23486t = this.f65123n;
                                    if (c23486t != null) {
                                        c23500b0.m6732c(c23486t, mo5809k2, c23486t.m6768a(abstractC23376j, abstractC23632g));
                                    } else {
                                        mo6642l0(abstractC23376j, abstractC23632g, this.f65309a, mo5809k2);
                                    }
                                }
                            }
                        } else if (!c23511g2.m6701e(abstractC23376j, abstractC23632g, mo5809k2, null) && c23500b0.m6733b(m6677c, m6829J0(abstractC23376j, abstractC23632g, m6677c))) {
                            abstractC23376j.mo5811i2();
                            try {
                                Object m6679a = c23535y.m6679a(abstractC23632g, c23500b0);
                                Class<?> cls3 = m6679a.getClass();
                                AbstractC23698i abstractC23698i = this.f65113d;
                                if (cls3 != abstractC23698i.f65728a) {
                                    abstractC23632g.mo6466m(abstractC23698i, String.format("Cannot create polymorphic instances with external type ids (%s -> %s)", abstractC23698i, m6679a.getClass()));
                                    throw null;
                                }
                                m6828K0(abstractC23376j, abstractC23632g, m6679a, c23511g2);
                                obj = m6679a;
                            } catch (Exception e3) {
                                m6822H0(e3, this.f65113d.f65728a, mo5809k2, abstractC23632g);
                                throw null;
                            }
                        }
                    }
                    mo7142l = abstractC23376j.mo5811i2();
                }
            } else {
                AbstractC23700j<Object> abstractC23700j = this.f65116g;
                if (abstractC23700j != null) {
                    obj = this.f65115f.mo6595w(abstractC23632g, abstractC23700j.mo6232d(abstractC23376j, abstractC23632g));
                } else {
                    Object mo6596v2 = this.f65115f.mo6596v(abstractC23632g);
                    m6828K0(abstractC23376j, abstractC23632g, mo6596v2, new C23511g(this.f65131v));
                    obj = mo6596v2;
                }
            }
            return obj;
        } else {
            AbstractC23700j<Object> abstractC23700j2 = this.f65116g;
            if (abstractC23700j2 != null) {
                obj2 = this.f65115f.mo6595w(abstractC23632g, abstractC23700j2.mo6232d(abstractC23376j, abstractC23632g));
            } else {
                C23535y c23535y2 = this.f65118i;
                if (c23535y2 != null) {
                    C23500b0 c23500b02 = new C23500b0(abstractC23376j, abstractC23632g, c23535y2.f65300a, this.f65132w);
                    C23893a0 c23893a0 = new C23893a0(abstractC23376j, abstractC23632g);
                    c23893a0.mo5875M1();
                    EnumC23381m mo7142l2 = abstractC23376j.mo7142l();
                    while (true) {
                        if (mo7142l2 != EnumC23381m.FIELD_NAME) {
                            try {
                                obj2 = c23535y2.m6679a(abstractC23632g, c23500b02);
                                this.f65130u.m6697a(abstractC23632g, obj2, c23893a0);
                                break;
                            } catch (Exception e4) {
                                m6821I0(e4, abstractC23632g);
                                throw null;
                            }
                        }
                        String mo5809k3 = abstractC23376j.mo5809k();
                        abstractC23376j.mo5811i2();
                        AbstractC23488u m6677c2 = c23535y2.m6677c(mo5809k3);
                        if (!c23500b02.m6731d(mo5809k3) || m6677c2 != null) {
                            if (m6677c2 == null) {
                                AbstractC23488u m6726e3 = this.f65121l.m6726e(mo5809k3);
                                if (m6726e3 != null) {
                                    c23500b02.f65204h = new AbstractC23495a0.C23498c(c23500b02.f65204h, m6829J0(abstractC23376j, abstractC23632g, m6726e3), m6726e3);
                                } else if (C26232y.m2406U1(mo5809k3, this.f65124o, this.f65125p)) {
                                    m6810y0(abstractC23376j, abstractC23632g, this.f65113d.f65728a, mo5809k3);
                                } else if (this.f65123n == null) {
                                    c23893a0.f66116q.m7061q(mo5809k3);
                                    c23893a0.m5860h2(mo5809k3);
                                    c23893a0.m5890A2(abstractC23376j);
                                } else {
                                    C23893a0 m5836w2 = C23893a0.m5836w2(abstractC23376j);
                                    c23893a0.f66116q.m7061q(mo5809k3);
                                    c23893a0.m5860h2(mo5809k3);
                                    c23893a0.m5837v2(m5836w2);
                                    try {
                                        C23486t c23486t2 = this.f65123n;
                                        c23500b02.m6732c(c23486t2, mo5809k3, c23486t2.m6768a(m5836w2.m5831z2(), abstractC23632g));
                                    } catch (Exception e5) {
                                        m6822H0(e5, this.f65113d.f65728a, mo5809k3, abstractC23632g);
                                        throw null;
                                    }
                                }
                            } else if (c23500b02.m6733b(m6677c2, m6829J0(abstractC23376j, abstractC23632g, m6677c2))) {
                                EnumC23381m mo5811i22 = abstractC23376j.mo5811i2();
                                try {
                                    Object m6679a2 = c23535y2.m6679a(abstractC23632g, c23500b02);
                                    abstractC23376j.mo7169t2(m6679a2);
                                    while (mo5811i22 == EnumC23381m.FIELD_NAME) {
                                        c23893a0.m5890A2(abstractC23376j);
                                        mo5811i22 = abstractC23376j.mo5811i2();
                                    }
                                    EnumC23381m enumC23381m = EnumC23381m.END_OBJECT;
                                    if (mo5811i22 != enumC23381m) {
                                        abstractC23632g.m6474f0(this, enumC23381m, "Attempted to unwrap '%s' value", this.f65113d.f65728a.getName());
                                        throw null;
                                    }
                                    c23893a0.mo5840t0();
                                    if (m6679a2.getClass() != this.f65113d.f65728a) {
                                        abstractC23632g.m6481Y(m6677c2, "Cannot create polymorphic instances with unwrapped values", new Object[0]);
                                        throw null;
                                    }
                                    this.f65130u.m6697a(abstractC23632g, m6679a2, c23893a0);
                                    obj2 = m6679a2;
                                } catch (Exception e6) {
                                    m6821I0(e6, abstractC23632g);
                                    throw null;
                                }
                            }
                        }
                        mo7142l2 = abstractC23376j.mo5811i2();
                    }
                } else {
                    C23893a0 c23893a02 = new C23893a0(abstractC23376j, abstractC23632g);
                    c23893a02.mo5875M1();
                    Object mo6596v3 = this.f65115f.mo6596v(abstractC23632g);
                    abstractC23376j.mo7169t2(mo6596v3);
                    if (this.f65122m != null) {
                        m6823C0(abstractC23632g, mo6596v3);
                    }
                    Class<?> cls4 = this.f65127r ? abstractC23632g.f65504f : null;
                    String mo5809k4 = abstractC23376j.mo7149R1(5) ? abstractC23376j.mo5809k() : null;
                    while (true) {
                        String str = mo5809k4;
                        if (str == null) {
                            break;
                        }
                        abstractC23376j.mo5811i2();
                        AbstractC23488u m6726e4 = this.f65121l.m6726e(str);
                        if (m6726e4 != null) {
                            if (cls4 == null || m6726e4.mo6758C(cls4)) {
                                try {
                                    m6726e4.mo6682i(abstractC23376j, abstractC23632g, mo6596v3);
                                } catch (Exception e7) {
                                    m6822H0(e7, mo6596v3, str, abstractC23632g);
                                    throw null;
                                }
                            } else {
                                abstractC23376j.mo7139w2();
                            }
                        } else if (C26232y.m2406U1(str, this.f65124o, this.f65125p)) {
                            m6810y0(abstractC23376j, abstractC23632g, mo6596v3, str);
                        } else if (this.f65123n == null) {
                            c23893a02.f66116q.m7061q(str);
                            c23893a02.m5860h2(str);
                            c23893a02.m5890A2(abstractC23376j);
                        } else {
                            C23893a0 m5836w22 = C23893a0.m5836w2(abstractC23376j);
                            c23893a02.f66116q.m7061q(str);
                            c23893a02.m5860h2(str);
                            c23893a02.m5837v2(m5836w22);
                            try {
                                this.f65123n.m6767b(m5836w22.m5831z2(), abstractC23632g, mo6596v3, str);
                            } catch (Exception e8) {
                                m6822H0(e8, mo6596v3, str, abstractC23632g);
                                throw null;
                            }
                        }
                        mo5809k4 = abstractC23376j.mo5813b2();
                    }
                    c23893a02.mo5840t0();
                    this.f65130u.m6697a(abstractC23632g, mo6596v3, c23893a02);
                    obj2 = mo6596v3;
                }
            }
            return obj2;
        }
    }

    /* renamed from: M0 */
    public final Object m6827M0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj, Class<?> cls) throws IOException {
        String mo5813b2;
        if (abstractC23376j.mo7149R1(5)) {
            String mo5809k = abstractC23376j.mo5809k();
            do {
                abstractC23376j.mo5811i2();
                AbstractC23488u m6726e = this.f65121l.m6726e(mo5809k);
                if (m6726e == null) {
                    m6824B0(abstractC23376j, abstractC23632g, obj, mo5809k);
                } else if (!m6726e.mo6758C(cls)) {
                    abstractC23376j.mo7139w2();
                } else {
                    try {
                        m6726e.mo6682i(abstractC23376j, abstractC23632g, obj);
                    } catch (Exception e) {
                        m6822H0(e, obj, mo5809k, abstractC23632g);
                        throw null;
                    }
                }
                mo5813b2 = abstractC23376j.mo5813b2();
                mo5809k = mo5813b2;
            } while (mo5813b2 != null);
            return obj;
        }
        return obj;
    }

    /* renamed from: N0 */
    public final Object m6826N0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        String mo5813b2;
        Object mo6596v = this.f65115f.mo6596v(abstractC23632g);
        abstractC23376j.mo7169t2(mo6596v);
        if (abstractC23376j.mo7149R1(5)) {
            String mo5809k = abstractC23376j.mo5809k();
            do {
                abstractC23376j.mo5811i2();
                AbstractC23488u m6726e = this.f65121l.m6726e(mo5809k);
                if (m6726e != null) {
                    try {
                        m6726e.mo6682i(abstractC23376j, abstractC23632g, mo6596v);
                    } catch (Exception e) {
                        m6822H0(e, mo6596v, mo5809k, abstractC23632g);
                        throw null;
                    }
                } else {
                    m6824B0(abstractC23376j, abstractC23632g, mo6596v, mo5809k);
                }
                mo5813b2 = abstractC23376j.mo5813b2();
                mo5809k = mo5813b2;
            } while (mo5813b2 != null);
            return mo6596v;
        }
        return mo6596v;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        Object obj;
        if (abstractC23376j.mo7144Y1()) {
            if (this.f65120k) {
                abstractC23376j.mo5811i2();
                return m6826N0(abstractC23376j, abstractC23632g);
            }
            abstractC23376j.mo5811i2();
            return this.f65132w != null ? mo6579L0(abstractC23376j, abstractC23632g) : mo6579L0(abstractC23376j, abstractC23632g);
        }
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        if (mo7142l != null) {
            switch (mo7142l.ordinal()) {
                case 2:
                case 5:
                    obj = this.f65120k ? m6826N0(abstractC23376j, abstractC23632g) : this.f65132w != null ? mo6579L0(abstractC23376j, abstractC23632g) : mo6579L0(abstractC23376j, abstractC23632g);
                    return obj;
                case 3:
                    obj = mo6676A(abstractC23376j, abstractC23632g);
                    return obj;
                case 6:
                    if (this.f65132w != null) {
                        obj = m6813v0(abstractC23376j, abstractC23632g);
                    } else {
                        AbstractC23700j<Object> m6820m0 = m6820m0();
                        if (m6820m0 == null || this.f65115f.mo6609h()) {
                            Object mo5803p0 = abstractC23376j.mo5803p0();
                            obj = mo5803p0;
                            if (mo5803p0 != null) {
                                obj = mo5803p0;
                                if (!this.f65113d.m6236J(mo5803p0.getClass())) {
                                    AbstractC23698i abstractC23698i = this.f65113d;
                                    Class<?> cls = abstractC23698i.f65728a;
                                    for (C23924n<AbstractC23479m> c23924n = abstractC23632g.f65501c.f65480l; c23924n != null; c23924n = c23924n.f66183b) {
                                        Objects.requireNonNull(c23924n.f66182a);
                                        Object obj2 = AbstractC23479m.f65157a;
                                    }
                                    throw new C23617c(abstractC23632g.f65505g, String.format("Cannot deserialize value of type %s from native value (`JsonToken.VALUE_EMBEDDED_OBJECT`) of type %s: incompatible types", C23914g.m5776E(cls), C23914g.m5761f(mo5803p0)), mo5803p0, cls);
                                }
                            }
                        } else {
                            Object mo6595w = this.f65115f.mo6595w(abstractC23632g, m6820m0.mo6232d(abstractC23376j, abstractC23632g));
                            obj = mo6595w;
                            if (this.f65122m != null) {
                                m6823C0(abstractC23632g, mo6595w);
                                obj = mo6595w;
                            }
                        }
                    }
                    return obj;
                case 7:
                    obj = m6811x0(abstractC23376j, abstractC23632g);
                    return obj;
                case 8:
                    obj = m6814u0(abstractC23376j, abstractC23632g);
                    return obj;
                case 9:
                    obj = m6815t0(abstractC23376j, abstractC23632g);
                    return obj;
                case 10:
                case 11:
                    obj = m6816s0(abstractC23376j, abstractC23632g);
                    return obj;
                case 12:
                    if (!abstractC23376j.mo7201s2()) {
                        AbstractC23698i abstractC23698i2 = this.f65310b;
                        if (abstractC23698i2 == null) {
                            abstractC23698i2 = abstractC23632g.m6465o(this.f65309a);
                        }
                        abstractC23632g.m6498H(abstractC23698i2, abstractC23376j);
                        throw null;
                    }
                    C23893a0 c23893a0 = new C23893a0(abstractC23376j, abstractC23632g);
                    c23893a0.mo5840t0();
                    AbstractC23376j m5834y2 = c23893a0.m5834y2(abstractC23376j);
                    m5834y2.mo5811i2();
                    if (this.f65120k) {
                        EnumC23381m enumC23381m = EnumC23381m.END_OBJECT;
                        obj = m6826N0(m5834y2, abstractC23632g);
                    } else {
                        obj = mo6579L0(m5834y2, abstractC23632g);
                    }
                    m5834y2.close();
                    return obj;
            }
        }
        AbstractC23698i abstractC23698i3 = this.f65310b;
        if (abstractC23698i3 == null) {
            abstractC23698i3 = abstractC23632g.m6465o(this.f65309a);
        }
        abstractC23632g.m6498H(abstractC23698i3, abstractC23376j);
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        String str;
        String mo5813b2;
        abstractC23376j.mo7169t2(obj);
        if (this.f65122m != null) {
            m6823C0(abstractC23632g, obj);
        }
        if (this.f65130u == null) {
            C23511g c23511g = this.f65131v;
            if (c23511g != null) {
                m6828K0(abstractC23376j, abstractC23632g, obj, new C23511g(c23511g));
                return obj;
            }
            if (abstractC23376j.mo7144Y1()) {
                String mo5813b22 = abstractC23376j.mo5813b2();
                str = mo5813b22;
                if (mo5813b22 == null) {
                    return obj;
                }
            } else if (!abstractC23376j.mo7149R1(5)) {
                return obj;
            } else {
                str = abstractC23376j.mo5809k();
            }
            String str2 = str;
            if (this.f65127r) {
                Class<?> cls = abstractC23632g.f65504f;
                str2 = str;
                if (cls != null) {
                    m6827M0(abstractC23376j, abstractC23632g, obj, cls);
                    return obj;
                }
            }
            do {
                abstractC23376j.mo5811i2();
                AbstractC23488u m6726e = this.f65121l.m6726e(str2);
                if (m6726e != null) {
                    try {
                        m6726e.mo6682i(abstractC23376j, abstractC23632g, obj);
                    } catch (Exception e) {
                        m6822H0(e, obj, str2, abstractC23632g);
                        throw null;
                    }
                } else {
                    m6824B0(abstractC23376j, abstractC23632g, obj, str2);
                }
                mo5813b2 = abstractC23376j.mo5813b2();
                str2 = mo5813b2;
            } while (mo5813b2 != null);
            return obj;
        }
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        EnumC23381m enumC23381m = mo7142l;
        if (mo7142l == EnumC23381m.START_OBJECT) {
            enumC23381m = abstractC23376j.mo5811i2();
        }
        C23893a0 c23893a0 = new C23893a0(abstractC23376j, abstractC23632g);
        c23893a0.mo5875M1();
        Class<?> cls2 = this.f65127r ? abstractC23632g.f65504f : null;
        while (enumC23381m == EnumC23381m.FIELD_NAME) {
            String mo5809k = abstractC23376j.mo5809k();
            AbstractC23488u m6726e2 = this.f65121l.m6726e(mo5809k);
            abstractC23376j.mo5811i2();
            if (m6726e2 != null) {
                if (cls2 == null || m6726e2.mo6758C(cls2)) {
                    try {
                        m6726e2.mo6682i(abstractC23376j, abstractC23632g, obj);
                    } catch (Exception e2) {
                        m6822H0(e2, obj, mo5809k, abstractC23632g);
                        throw null;
                    }
                } else {
                    abstractC23376j.mo7139w2();
                }
            } else if (C26232y.m2406U1(mo5809k, this.f65124o, this.f65125p)) {
                m6810y0(abstractC23376j, abstractC23632g, obj, mo5809k);
            } else if (this.f65123n == null) {
                c23893a0.f66116q.m7061q(mo5809k);
                c23893a0.m5860h2(mo5809k);
                c23893a0.m5890A2(abstractC23376j);
            } else {
                C23893a0 m5836w2 = C23893a0.m5836w2(abstractC23376j);
                c23893a0.f66116q.m7061q(mo5809k);
                c23893a0.m5860h2(mo5809k);
                c23893a0.m5837v2(m5836w2);
                try {
                    this.f65123n.m6767b(m5836w2.m5831z2(), abstractC23632g, obj, mo5809k);
                } catch (Exception e3) {
                    m6822H0(e3, obj, mo5809k, abstractC23632g);
                    throw null;
                }
            }
            enumC23381m = abstractC23376j.mo5811i2();
        }
        c23893a0.mo5840t0();
        this.f65130u.m6697a(abstractC23632g, obj, c23893a0);
        return obj;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: n0 */
    public Object mo6736n0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        C23893a0 c23893a0;
        C23535y c23535y = this.f65118i;
        C23500b0 c23500b0 = new C23500b0(abstractC23376j, abstractC23632g, c23535y.f65300a, this.f65132w);
        Class<?> cls = this.f65127r ? abstractC23632g.f65504f : null;
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        ArrayList<C23468a> arrayList = null;
        C23893a0 c23893a02 = null;
        while (true) {
            C23893a0 c23893a03 = c23893a02;
            if (mo7142l != EnumC23381m.FIELD_NAME) {
                try {
                    Object m6679a = c23535y.m6679a(abstractC23632g, c23500b0);
                    if (this.f65122m != null) {
                        m6823C0(abstractC23632g, m6679a);
                    }
                    if (arrayList != null) {
                        for (C23468a c23468a : arrayList) {
                            c23468a.f65111d = m6679a;
                        }
                    }
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
                    try {
                        c23500b0.f65204h = new AbstractC23495a0.C23498c(c23500b0.f65204h, m6829J0(abstractC23376j, abstractC23632g, m6726e), m6726e);
                        c23893a0 = c23893a03;
                    } catch (C23490v e2) {
                        C23468a c23468a2 = new C23468a(abstractC23632g, e2, m6726e.f65172d, m6726e);
                        e2.f65183d.m6721a(c23468a2);
                        ArrayList arrayList2 = arrayList;
                        if (arrayList == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(c23468a2);
                        arrayList = arrayList2;
                        c23893a0 = c23893a03;
                    }
                } else if (C26232y.m2406U1(mo5809k, this.f65124o, this.f65125p)) {
                    m6810y0(abstractC23376j, abstractC23632g, this.f65113d.f65728a, mo5809k);
                    c23893a0 = c23893a03;
                } else {
                    C23486t c23486t = this.f65123n;
                    if (c23486t != null) {
                        try {
                            c23500b0.m6732c(c23486t, mo5809k, c23486t.m6768a(abstractC23376j, abstractC23632g));
                            c23893a0 = c23893a03;
                        } catch (Exception e3) {
                            m6822H0(e3, this.f65113d.f65728a, mo5809k, abstractC23632g);
                            throw null;
                        }
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
            } else if (cls == null || m6677c.mo6758C(cls)) {
                c23893a0 = c23893a03;
                if (c23500b0.m6733b(m6677c, m6829J0(abstractC23376j, abstractC23632g, m6677c))) {
                    abstractC23376j.mo5811i2();
                    try {
                        Object m6679a2 = c23535y.m6679a(abstractC23632g, c23500b0);
                        if (m6679a2 == null) {
                            Class<?> cls2 = this.f65113d.f65728a;
                            if (this.f65107y == null) {
                                this.f65107y = new NullPointerException("JSON Creator returned null");
                            }
                            abstractC23632g.m6502D(cls2, null, this.f65107y);
                            throw null;
                        }
                        abstractC23376j.mo7169t2(m6679a2);
                        if (m6679a2.getClass() != this.f65113d.f65728a) {
                            return m6809z0(abstractC23376j, abstractC23632g, m6679a2, c23893a03);
                        }
                        if (c23893a03 != null) {
                            m6825A0(abstractC23632g, m6679a2, c23893a03);
                        }
                        return mo6231e(abstractC23376j, abstractC23632g, m6679a2);
                    } catch (Exception e4) {
                        m6821I0(e4, abstractC23632g);
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

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: q */
    public AbstractC23700j<Object> mo6219q(AbstractC23929s abstractC23929s) {
        if (getClass() == C23467c.class && this.f65108z != abstractC23929s) {
            this.f65108z = abstractC23929s;
            try {
                return new C23467c(this, abstractC23929s);
            } finally {
                this.f65108z = null;
            }
        }
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: r0 */
    public AbstractC23469d mo6735r0() {
        return new C23499b(this, this.f65121l.f65211f);
    }
}
