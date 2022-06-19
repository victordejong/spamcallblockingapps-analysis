package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.EnumMap;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.AbstractC23940o;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23485s;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.AbstractC23495a0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23500b0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23535y;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23877g;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.z.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/l.class */
public class C23570l extends AbstractC23561i<EnumMap<?, ?>> implements AbstractC23474i, AbstractC23485s {

    /* renamed from: h */
    public final Class<?> f65377h;

    /* renamed from: i */
    public AbstractC23940o f65378i;

    /* renamed from: j */
    public AbstractC23700j<Object> f65379j;

    /* renamed from: k */
    public final AbstractC23709e f65380k;

    /* renamed from: l */
    public final AbstractC23491w f65381l;

    /* renamed from: m */
    public AbstractC23700j<Object> f65382m;

    /* renamed from: n */
    public C23535y f65383n;

    public C23570l(C23570l c23570l, AbstractC23940o abstractC23940o, AbstractC23700j<?> abstractC23700j, AbstractC23709e abstractC23709e, AbstractC23484r abstractC23484r) {
        super(c23570l, abstractC23484r, c23570l.f65364g);
        this.f65377h = c23570l.f65377h;
        this.f65378i = abstractC23940o;
        this.f65379j = abstractC23700j;
        this.f65380k = abstractC23709e;
        this.f65381l = c23570l.f65381l;
        this.f65382m = c23570l.f65382m;
        this.f65383n = c23570l.f65383n;
    }

    public C23570l(AbstractC23698i abstractC23698i, AbstractC23491w abstractC23491w, AbstractC23940o abstractC23940o, AbstractC23700j<?> abstractC23700j, AbstractC23709e abstractC23709e, AbstractC23484r abstractC23484r) {
        super(abstractC23698i, (AbstractC23484r) null, (Boolean) null);
        this.f65377h = ((C23877g) abstractC23698i).f66042j.f65728a;
        this.f65378i = null;
        this.f65379j = abstractC23700j;
        this.f65380k = abstractC23709e;
        this.f65381l = abstractC23491w;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23940o abstractC23940o = this.f65378i;
        AbstractC23940o abstractC23940o2 = abstractC23940o;
        if (abstractC23940o == null) {
            abstractC23940o2 = abstractC23632g.m6459u(this.f65361d.mo5970o(), abstractC23462d);
        }
        AbstractC23700j<?> abstractC23700j = this.f65379j;
        AbstractC23698i mo5948k = this.f65361d.mo5948k();
        AbstractC23700j<Object> m6461s = abstractC23700j == null ? abstractC23632g.m6461s(mo5948k, abstractC23462d) : abstractC23632g.m6499G(abstractC23700j, abstractC23462d, mo5948k);
        AbstractC23709e abstractC23709e = this.f65380k;
        AbstractC23709e abstractC23709e2 = abstractC23709e;
        if (abstractC23709e != null) {
            abstractC23709e2 = abstractC23709e.mo6204f(abstractC23462d);
        }
        AbstractC23484r m6646f0 = m6646f0(abstractC23632g, abstractC23462d, m6461s);
        return (abstractC23940o2 == this.f65378i && m6646f0 == this.f65362e && m6461s == this.f65379j && abstractC23709e2 == this.f65380k) ? this : new C23570l(this, abstractC23940o2, m6461s, abstractC23709e2, m6646f0);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23485s
    /* renamed from: b */
    public void mo6548b(AbstractC23632g abstractC23632g) throws C23733k {
        AbstractC23491w abstractC23491w = this.f65381l;
        if (abstractC23491w != null) {
            if (abstractC23491w.mo6606k()) {
                AbstractC23698i mo6619B = this.f65381l.mo6619B(abstractC23632g.f65501c);
                if (mo6619B != null) {
                    this.f65382m = abstractC23632g.m6461s(mo6619B, null);
                    return;
                }
                AbstractC23698i abstractC23698i = this.f65361d;
                abstractC23632g.mo6466m(abstractC23698i, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'", abstractC23698i, this.f65381l.getClass().getName()));
                throw null;
            } else if (!this.f65381l.mo6608i()) {
                if (!this.f65381l.mo6550g()) {
                    return;
                }
                this.f65383n = C23535y.m6678b(abstractC23632g, this.f65381l, this.f65381l.mo6552C(abstractC23632g.f65501c), abstractC23632g.m6487S(EnumC23942p.ACCEPT_CASE_INSENSITIVE_PROPERTIES));
            } else {
                AbstractC23698i mo6593y = this.f65381l.mo6593y(abstractC23632g.f65501c);
                if (mo6593y != null) {
                    this.f65382m = abstractC23632g.m6461s(mo6593y, null);
                    return;
                }
                AbstractC23698i abstractC23698i2 = this.f65361d;
                abstractC23632g.mo6466m(abstractC23698i2, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'", abstractC23698i2, this.f65381l.getClass().getName()));
                throw null;
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        EnumMap<?, ?> enumMap;
        Object obj;
        C23535y c23535y = this.f65383n;
        if (c23535y != null) {
            C23500b0 c23500b0 = new C23500b0(abstractC23376j, abstractC23632g, c23535y.f65300a, null);
            String mo5813b2 = abstractC23376j.mo7144Y1() ? abstractC23376j.mo5813b2() : abstractC23376j.mo7150O1(EnumC23381m.FIELD_NAME) ? abstractC23376j.mo5809k() : null;
            while (true) {
                String str = mo5813b2;
                if (str == null) {
                    try {
                        enumMap = (EnumMap) c23535y.m6679a(abstractC23632g, c23500b0);
                        break;
                    } catch (Exception e) {
                        m6583n0(abstractC23632g, e, this.f65361d.f65728a, str);
                        throw null;
                    }
                }
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                AbstractC23488u abstractC23488u = c23535y.f65302c.get(str);
                if (abstractC23488u == null) {
                    Enum r0 = (Enum) this.f65378i.mo5684a(str, abstractC23632g);
                    if (r0 != null) {
                        try {
                            if (mo5811i2 != EnumC23381m.VALUE_NULL) {
                                AbstractC23709e abstractC23709e = this.f65380k;
                                obj = abstractC23709e == null ? this.f65379j.mo6232d(abstractC23376j, abstractC23632g) : this.f65379j.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
                            } else if (!this.f65363f) {
                                obj = this.f65362e.mo6233c(abstractC23632g);
                            }
                            c23500b0.f65204h = new AbstractC23495a0.C23497b(c23500b0.f65204h, obj, r0);
                        } catch (Exception e2) {
                            m6583n0(abstractC23632g, e2, this.f65361d.f65728a, str);
                            throw null;
                        }
                    } else if (!abstractC23632g.m6488R(EnumC23694h.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                        abstractC23632g.m6492N(this.f65377h, str, "value not one of declared Enum instance names for %s", this.f65361d.mo5970o());
                        throw null;
                    } else {
                        abstractC23376j.mo5811i2();
                        abstractC23376j.mo7139w2();
                    }
                } else if (c23500b0.m6733b(abstractC23488u, abstractC23488u.m6762h(abstractC23376j, abstractC23632g))) {
                    abstractC23376j.mo5811i2();
                    try {
                        EnumMap<?, ?> enumMap2 = (EnumMap) c23535y.m6679a(abstractC23632g, c23500b0);
                        m6576p0(abstractC23376j, abstractC23632g, enumMap2);
                        enumMap = enumMap2;
                        break;
                    } catch (Exception e3) {
                        m6583n0(abstractC23632g, e3, this.f65361d.f65728a, str);
                        throw null;
                    }
                }
                mo5813b2 = abstractC23376j.mo5813b2();
            }
        } else {
            AbstractC23700j<Object> abstractC23700j = this.f65382m;
            if (abstractC23700j != null) {
                enumMap = (EnumMap) this.f65381l.mo6595w(abstractC23632g, abstractC23700j.mo6232d(abstractC23376j, abstractC23632g));
            } else {
                int mo7140q = abstractC23376j.mo7140q();
                if (mo7140q != 1 && mo7140q != 2) {
                    if (mo7140q == 3) {
                        enumMap = mo6676A(abstractC23376j, abstractC23632g);
                    } else if (mo7140q != 5) {
                        if (mo7140q != 6) {
                            AbstractC23698i abstractC23698i = this.f65310b;
                            if (abstractC23698i == null) {
                                abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                            }
                            abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                            throw null;
                        }
                        enumMap = m6674C(abstractC23376j, abstractC23632g);
                    }
                }
                EnumMap<?, ?> m6577o0 = m6577o0(abstractC23632g);
                m6576p0(abstractC23376j, abstractC23632g, m6577o0);
                enumMap = m6577o0;
            }
        }
        return enumMap;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public /* bridge */ /* synthetic */ Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        EnumMap enumMap = (EnumMap) obj;
        m6576p0(abstractC23376j, abstractC23632g, enumMap);
        return enumMap;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return abstractC23709e.mo6206d(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0
    /* renamed from: i0 */
    public AbstractC23491w mo6533i0() {
        return this.f65381l;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return m6577o0(abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i
    /* renamed from: m0 */
    public AbstractC23700j<Object> mo6541m0() {
        return this.f65379j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: n */
    public boolean mo6222n() {
        return this.f65379j == null && this.f65378i == null && this.f65380k == null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Map;
    }

    /* renamed from: o0 */
    public EnumMap<?, ?> m6577o0(AbstractC23632g abstractC23632g) throws C23733k {
        AbstractC23491w abstractC23491w = this.f65381l;
        if (abstractC23491w == null) {
            return new EnumMap<>(this.f65377h);
        }
        try {
            if (abstractC23491w.mo6607j()) {
                return (EnumMap) this.f65381l.mo6596v(abstractC23632g);
            }
            abstractC23632g.m6501E(this.f65309a, this.f65381l, null, "no default constructor found", new Object[0]);
            throw null;
        } catch (IOException e) {
            C23914g.m5773H(abstractC23632g, e);
            throw null;
        }
    }

    /* renamed from: p0 */
    public EnumMap<?, ?> m6576p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, EnumMap enumMap) throws IOException {
        String str;
        Object obj;
        abstractC23376j.mo7169t2(enumMap);
        AbstractC23700j<Object> abstractC23700j = this.f65379j;
        AbstractC23709e abstractC23709e = this.f65380k;
        if (abstractC23376j.mo7144Y1()) {
            str = abstractC23376j.mo5813b2();
        } else {
            EnumC23381m mo7142l = abstractC23376j.mo7142l();
            EnumC23381m enumC23381m = EnumC23381m.FIELD_NAME;
            if (mo7142l != enumC23381m) {
                if (mo7142l == EnumC23381m.END_OBJECT) {
                    return enumMap;
                }
                abstractC23632g.m6474f0(this, enumC23381m, null, new Object[0]);
                throw null;
            }
            str = abstractC23376j.mo5809k();
        }
        while (true) {
            String str2 = str;
            if (str2 != null) {
                Enum r0 = (Enum) this.f65378i.mo5684a(str2, abstractC23632g);
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                if (r0 != null) {
                    try {
                        if (mo5811i2 != EnumC23381m.VALUE_NULL) {
                            obj = abstractC23709e == null ? abstractC23700j.mo6232d(abstractC23376j, abstractC23632g) : abstractC23700j.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
                        } else if (!this.f65363f) {
                            obj = this.f65362e.mo6233c(abstractC23632g);
                        }
                        enumMap.put((EnumMap) r0, (Enum) obj);
                    } catch (Exception e) {
                        m6583n0(abstractC23632g, e, enumMap, str2);
                        throw null;
                    }
                } else if (!abstractC23632g.m6488R(EnumC23694h.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                    abstractC23632g.m6492N(this.f65377h, str2, "value not one of declared Enum instance names for %s", this.f65361d.mo5970o());
                    throw null;
                } else {
                    abstractC23376j.mo7139w2();
                }
                str = abstractC23376j.mo5813b2();
            } else {
                return enumMap;
            }
        }
    }
}
