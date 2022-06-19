package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23500b0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23535y;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.z.n */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/n.class */
public class C23575n extends AbstractC23541b0<Object> implements AbstractC23474i {

    /* renamed from: d */
    public final AbstractC23698i f65400d;

    /* renamed from: e */
    public final boolean f65401e;

    /* renamed from: f */
    public final C23664j f65402f;

    /* renamed from: g */
    public final AbstractC23700j<?> f65403g;

    /* renamed from: h */
    public final AbstractC23491w f65404h;

    /* renamed from: i */
    public final AbstractC23488u[] f65405i;

    /* renamed from: j */
    public transient C23535y f65406j;

    public C23575n(C23575n c23575n, AbstractC23700j<?> abstractC23700j) {
        super(c23575n.f65309a);
        this.f65400d = c23575n.f65400d;
        this.f65402f = c23575n.f65402f;
        this.f65401e = c23575n.f65401e;
        this.f65404h = c23575n.f65404h;
        this.f65405i = c23575n.f65405i;
        this.f65403g = abstractC23700j;
    }

    public C23575n(Class<?> cls, C23664j c23664j) {
        super(cls);
        this.f65402f = c23664j;
        this.f65401e = false;
        this.f65400d = null;
        this.f65403g = null;
        this.f65404h = null;
        this.f65405i = null;
    }

    public C23575n(Class<?> cls, C23664j c23664j, AbstractC23698i abstractC23698i, AbstractC23491w abstractC23491w, AbstractC23488u[] abstractC23488uArr) {
        super(cls);
        this.f65402f = c23664j;
        boolean z = true;
        this.f65401e = true;
        this.f65400d = abstractC23698i.f65728a != String.class ? false : z ? null : abstractC23698i;
        this.f65403g = null;
        this.f65404h = abstractC23491w;
        this.f65405i = abstractC23488uArr;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23698i abstractC23698i;
        return (this.f65403g == null && (abstractC23698i = this.f65400d) != null && this.f65405i == null) ? new C23575n(this, abstractC23632g.m6461s(abstractC23698i, abstractC23462d)) : this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        Object obj;
        AbstractC23700j<?> abstractC23700j = this.f65403g;
        if (abstractC23700j != null) {
            obj = abstractC23700j.mo6232d(abstractC23376j, abstractC23632g);
        } else if (!this.f65401e) {
            abstractC23376j.mo7139w2();
            try {
                return this.f65402f.f65619d.invoke(null, new Object[0]);
            } catch (Exception e) {
                Throwable m5748s = C23914g.m5748s(e);
                C23914g.m5771J(m5748s);
                abstractC23632g.m6502D(this.f65309a, null, m5748s);
                throw null;
            }
        } else {
            EnumC23381m mo7142l = abstractC23376j.mo7142l();
            if (this.f65405i != null) {
                if (!abstractC23376j.mo7144Y1()) {
                    AbstractC23698i abstractC23698i = this.f65310b;
                    if (abstractC23698i == null) {
                        abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                    }
                    abstractC23632g.m6480Z(abstractC23698i, "Input mismatch reading Enum %s: properties-based `@JsonCreator` (%s) expects JSON Object (JsonToken.START_OBJECT), got JsonToken.%s", C23914g.m5747t(abstractC23698i), this.f65402f, abstractC23376j.mo7142l());
                    throw null;
                }
                if (this.f65406j == null) {
                    this.f65406j = C23535y.m6678b(abstractC23632g, this.f65404h, this.f65405i, abstractC23632g.m6487S(EnumC23942p.ACCEPT_CASE_INSENSITIVE_PROPERTIES));
                }
                abstractC23376j.mo5811i2();
                C23535y c23535y = this.f65406j;
                C23500b0 c23500b0 = new C23500b0(abstractC23376j, abstractC23632g, c23535y.f65300a, null);
                EnumC23381m mo7142l2 = abstractC23376j.mo7142l();
                while (mo7142l2 == EnumC23381m.FIELD_NAME) {
                    String mo5809k = abstractC23376j.mo5809k();
                    abstractC23376j.mo5811i2();
                    AbstractC23488u m6677c = c23535y.m6677c(mo5809k);
                    if ((!c23500b0.m6731d(mo5809k) || m6677c != null) && m6677c != null) {
                        try {
                            c23500b0.m6733b(m6677c, m6677c.m6762h(abstractC23376j, abstractC23632g));
                        } catch (Exception e2) {
                            Class<?> cls = this.f65309a;
                            String str = m6677c.f65171c.f66304a;
                            Throwable m5748s2 = C23914g.m5748s(e2);
                            C23914g.m5772I(m5748s2);
                            boolean z = true;
                            if (abstractC23632g != null) {
                                z = abstractC23632g.m6488R(EnumC23694h.WRAP_EXCEPTIONS);
                            }
                            if (m5748s2 instanceof IOException) {
                                if (!z || !(m5748s2 instanceof C23379k)) {
                                    throw ((IOException) m5748s2);
                                }
                            } else if (!z) {
                                C23914g.m5770K(m5748s2);
                            }
                            throw C23733k.m6157j(m5748s2, cls, str);
                        }
                    }
                    mo7142l2 = abstractC23376j.mo5811i2();
                }
                return c23535y.m6679a(abstractC23632g, c23500b0);
            }
            obj = (mo7142l == EnumC23381m.VALUE_STRING || mo7142l == EnumC23381m.FIELD_NAME) ? abstractC23376j.mo5817U0() : mo7142l == EnumC23381m.VALUE_NUMBER_INT ? abstractC23376j.mo5827F0() : abstractC23376j.mo7001F1();
        }
        try {
            return this.f65402f.f65619d.invoke(this.f65309a, obj);
        } catch (Exception e3) {
            Throwable m5748s3 = C23914g.m5748s(e3);
            C23914g.m5771J(m5748s3);
            if (abstractC23632g.m6488R(EnumC23694h.READ_UNKNOWN_ENUM_VALUES_AS_NULL) && (m5748s3 instanceof IllegalArgumentException)) {
                return null;
            }
            abstractC23632g.m6502D(this.f65309a, obj, m5748s3);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return this.f65403g == null ? mo6232d(abstractC23376j, abstractC23632g) : abstractC23709e.mo6208b(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0
    /* renamed from: i0 */
    public AbstractC23491w mo6533i0() {
        return this.f65404h;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: n */
    public boolean mo6222n() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Enum;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return Boolean.FALSE;
    }
}
