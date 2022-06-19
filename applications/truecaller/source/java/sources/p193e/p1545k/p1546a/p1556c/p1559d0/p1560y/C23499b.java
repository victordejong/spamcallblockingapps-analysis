package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.util.Set;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.AbstractC23495a0;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.y.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/b.class */
public class C23499b extends AbstractC23469d {

    /* renamed from: y */
    public final AbstractC23469d f65195y;

    /* renamed from: z */
    public final AbstractC23488u[] f65196z;

    public C23499b(AbstractC23469d abstractC23469d, AbstractC23488u[] abstractC23488uArr) {
        super(abstractC23469d, abstractC23469d.f65126q);
        this.f65195y = abstractC23469d;
        this.f65196z = abstractC23488uArr;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: D0 */
    public AbstractC23469d mo6741D0(C23501c c23501c) {
        return new C23499b(this.f65195y.mo6741D0(c23501c), this.f65196z);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: E0 */
    public AbstractC23469d mo6740E0(Set<String> set, Set<String> set2) {
        return new C23499b(this.f65195y.mo6740E0(set, set2), this.f65196z);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: F0 */
    public AbstractC23469d mo6739F0(boolean z) {
        return new C23499b(this.f65195y.mo6739F0(z), this.f65196z);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: G0 */
    public AbstractC23469d mo6738G0(C23531v c23531v) {
        return new C23499b(this.f65195y.mo6738G0(c23531v), this.f65196z);
    }

    /* renamed from: J0 */
    public Object m6737J0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        AbstractC23698i abstractC23698i = this.f65310b;
        if (abstractC23698i == null) {
            abstractC23698i = abstractC23632g.m6465o(this.f65309a);
        }
        abstractC23632g.m6497I(abstractC23698i, abstractC23376j.mo7142l(), abstractC23376j, "Cannot deserialize a POJO (of type %s) from non-Array representation (token: %s): type/property designed to be serialized as JSON Array", C23914g.m5747t(this.f65113d), abstractC23376j.mo7142l());
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        Object obj;
        if (!abstractC23376j.mo7146V1()) {
            m6737J0(abstractC23376j, abstractC23632g);
            throw null;
        } else if (!this.f65120k) {
            if (this.f65119j) {
                obj = m6812w0(abstractC23376j, abstractC23632g);
            } else {
                Object mo6596v = this.f65115f.mo6596v(abstractC23632g);
                abstractC23376j.mo7169t2(mo6596v);
                if (this.f65122m != null) {
                    m6823C0(abstractC23632g, mo6596v);
                }
                Class<?> cls = this.f65127r ? abstractC23632g.f65504f : null;
                AbstractC23488u[] abstractC23488uArr = this.f65196z;
                int length = abstractC23488uArr.length;
                int i = 0;
                while (true) {
                    EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                    EnumC23381m enumC23381m = EnumC23381m.END_ARRAY;
                    if (mo5811i2 == enumC23381m) {
                        break;
                    } else if (i != length) {
                        AbstractC23488u abstractC23488u = abstractC23488uArr[i];
                        i++;
                        if (abstractC23488u == null || (cls != null && !abstractC23488u.mo6758C(cls))) {
                            abstractC23376j.mo7139w2();
                        } else {
                            try {
                                abstractC23488u.mo6682i(abstractC23376j, abstractC23632g, mo6596v);
                            } catch (Exception e) {
                                m6822H0(e, mo6596v, abstractC23488u.f65171c.f66304a, abstractC23632g);
                                throw null;
                            }
                        }
                    } else if (!this.f65126q) {
                        abstractC23632g.m6474f0(this, enumC23381m, "Unexpected JSON values; expected at most %d properties (in JSON Array)", Integer.valueOf(length));
                        throw null;
                    } else {
                        do {
                            abstractC23376j.mo7139w2();
                        } while (abstractC23376j.mo5811i2() != EnumC23381m.END_ARRAY);
                    }
                }
                obj = mo6596v;
            }
            return obj;
        } else {
            Object mo6596v2 = this.f65115f.mo6596v(abstractC23632g);
            abstractC23376j.mo7169t2(mo6596v2);
            AbstractC23488u[] abstractC23488uArr2 = this.f65196z;
            int length2 = abstractC23488uArr2.length;
            int i2 = 0;
            while (true) {
                EnumC23381m mo5811i22 = abstractC23376j.mo5811i2();
                EnumC23381m enumC23381m2 = EnumC23381m.END_ARRAY;
                if (mo5811i22 == enumC23381m2) {
                    return mo6596v2;
                }
                if (i2 == length2) {
                    if (!this.f65126q && abstractC23632g.m6488R(EnumC23694h.FAIL_ON_UNKNOWN_PROPERTIES)) {
                        abstractC23632g.m6474f0(this, enumC23381m2, "Unexpected JSON values; expected at most %d properties (in JSON Array)", Integer.valueOf(length2));
                        throw null;
                    }
                    do {
                        abstractC23376j.mo7139w2();
                    } while (abstractC23376j.mo5811i2() != EnumC23381m.END_ARRAY);
                    return mo6596v2;
                }
                AbstractC23488u abstractC23488u2 = abstractC23488uArr2[i2];
                if (abstractC23488u2 != null) {
                    try {
                        abstractC23488u2.mo6682i(abstractC23376j, abstractC23632g, mo6596v2);
                    } catch (Exception e2) {
                        m6822H0(e2, mo6596v2, abstractC23488u2.f65171c.f66304a, abstractC23632g);
                        throw null;
                    }
                } else {
                    abstractC23376j.mo7139w2();
                }
                i2++;
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        abstractC23376j.mo7169t2(obj);
        if (!abstractC23376j.mo7146V1()) {
            m6737J0(abstractC23376j, abstractC23632g);
            throw null;
        }
        if (this.f65122m != null) {
            m6823C0(abstractC23632g, obj);
        }
        AbstractC23488u[] abstractC23488uArr = this.f65196z;
        int length = abstractC23488uArr.length;
        int i = 0;
        while (true) {
            EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
            EnumC23381m enumC23381m = EnumC23381m.END_ARRAY;
            if (mo5811i2 == enumC23381m) {
                return obj;
            }
            if (i == length) {
                if (!this.f65126q && abstractC23632g.m6488R(EnumC23694h.FAIL_ON_UNKNOWN_PROPERTIES)) {
                    abstractC23632g.m6474f0(this, enumC23381m, "Unexpected JSON values; expected at most %d properties (in JSON Array)", Integer.valueOf(length));
                    throw null;
                }
                do {
                    abstractC23376j.mo7139w2();
                } while (abstractC23376j.mo5811i2() != EnumC23381m.END_ARRAY);
                return obj;
            }
            AbstractC23488u abstractC23488u = abstractC23488uArr[i];
            if (abstractC23488u != null) {
                try {
                    abstractC23488u.mo6682i(abstractC23376j, abstractC23632g, obj);
                } catch (Exception e) {
                    m6822H0(e, obj, abstractC23488u.f65171c.f66304a, abstractC23632g);
                    throw null;
                }
            } else {
                abstractC23376j.mo7139w2();
            }
            i++;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: n0 */
    public final Object mo6736n0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        C23535y c23535y = this.f65118i;
        C23500b0 c23500b0 = new C23500b0(abstractC23376j, abstractC23632g, c23535y.f65300a, this.f65132w);
        AbstractC23488u[] abstractC23488uArr = this.f65196z;
        int length = abstractC23488uArr.length;
        Class<?> cls = this.f65127r ? abstractC23632g.f65504f : null;
        Object obj = null;
        int i = 0;
        while (abstractC23376j.mo5811i2() != EnumC23381m.END_ARRAY) {
            AbstractC23488u abstractC23488u = i < length ? abstractC23488uArr[i] : null;
            if (abstractC23488u == null) {
                abstractC23376j.mo7139w2();
            } else if (cls != null && !abstractC23488u.mo6758C(cls)) {
                abstractC23376j.mo7139w2();
            } else if (obj != null) {
                try {
                    abstractC23488u.mo6682i(abstractC23376j, abstractC23632g, obj);
                } catch (Exception e) {
                    m6822H0(e, obj, abstractC23488u.f65171c.f66304a, abstractC23632g);
                    throw null;
                }
            } else {
                String str = abstractC23488u.f65171c.f66304a;
                AbstractC23488u m6677c = c23535y.m6677c(str);
                if (!c23500b0.m6731d(str) || m6677c != null) {
                    if (m6677c == null) {
                        c23500b0.f65204h = new AbstractC23495a0.C23498c(c23500b0.f65204h, abstractC23488u.m6762h(abstractC23376j, abstractC23632g), abstractC23488u);
                    } else if (c23500b0.m6733b(m6677c, m6677c.m6762h(abstractC23376j, abstractC23632g))) {
                        try {
                            obj = c23535y.m6679a(abstractC23632g, c23500b0);
                            abstractC23376j.mo7169t2(obj);
                            Class<?> cls2 = obj.getClass();
                            AbstractC23698i abstractC23698i = this.f65113d;
                            if (cls2 != abstractC23698i.f65728a) {
                                abstractC23632g.mo6466m(abstractC23698i, String.format("Cannot support implicit polymorphic deserialization for POJOs-as-Arrays style: nominal type %s, actual type %s", C23914g.m5747t(abstractC23698i), C23914g.m5753n(obj)));
                                throw null;
                            }
                        } catch (Exception e2) {
                            m6822H0(e2, this.f65113d.f65728a, str, abstractC23632g);
                            throw null;
                        }
                    } else {
                        continue;
                    }
                }
            }
            i++;
        }
        Object obj2 = obj;
        if (obj == null) {
            try {
                obj2 = c23535y.m6679a(abstractC23632g, c23500b0);
            } catch (Exception e3) {
                m6821I0(e3, abstractC23632g);
                throw null;
            }
        }
        return obj2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: q */
    public AbstractC23700j<Object> mo6219q(AbstractC23929s abstractC23929s) {
        return this.f65195y.mo6219q(abstractC23929s);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d
    /* renamed from: r0 */
    public AbstractC23469d mo6735r0() {
        return this;
    }
}
