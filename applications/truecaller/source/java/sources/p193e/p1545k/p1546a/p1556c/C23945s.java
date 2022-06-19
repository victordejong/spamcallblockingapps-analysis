package p193e.p1545k.p1546a.p1556c;

import java.io.IOException;
import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;
import p193e.p1545k.p1546a.p1548b.AbstractC23367c;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.AbstractC23382n;
import p193e.p1545k.p1546a.p1548b.AbstractC23388t;
import p193e.p1545k.p1546a.p1548b.C23369e;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23477l;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23616b;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.s */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/s.class */
public class C23945s extends AbstractC23382n implements Serializable {

    /* renamed from: a */
    public final C23624f f66270a;

    /* renamed from: b */
    public final AbstractC23477l f66271b;

    /* renamed from: c */
    public final C23369e f66272c;

    /* renamed from: d */
    public final AbstractC23698i f66273d;

    /* renamed from: e */
    public final AbstractC23700j<Object> f66274e;

    /* renamed from: f */
    public final Object f66275f;

    /* renamed from: g */
    public final AbstractC23367c f66276g;

    /* renamed from: h */
    public final ConcurrentHashMap<AbstractC23698i, AbstractC23700j<Object>> f66277h;

    public C23945s(C23944r c23944r, C23624f c23624f, AbstractC23698i abstractC23698i, Object obj, AbstractC23367c abstractC23367c) {
        this.f66270a = c23624f;
        AbstractC23477l abstractC23477l = c23944r.f66268j;
        this.f66271b = abstractC23477l;
        ConcurrentHashMap<AbstractC23698i, AbstractC23700j<Object>> concurrentHashMap = c23944r.f66269k;
        this.f66277h = concurrentHashMap;
        this.f66272c = c23944r.f66259a;
        this.f66273d = abstractC23698i;
        this.f66275f = obj;
        this.f66276g = abstractC23367c;
        C23951v c23951v = c23624f.f65076e;
        if (c23951v != null) {
            c23951v.m5661e();
        } else {
            c23624f.m6515y(EnumC23694h.UNWRAP_ROOT_VALUE);
        }
        AbstractC23700j<Object> abstractC23700j = null;
        if (abstractC23698i != null) {
            if (!c23624f.m6515y(EnumC23694h.EAGER_DESERIALIZER_FETCH)) {
                abstractC23700j = null;
            } else {
                AbstractC23700j<Object> abstractC23700j2 = concurrentHashMap.get(abstractC23698i);
                abstractC23700j = abstractC23700j2;
                if (abstractC23700j2 == null) {
                    abstractC23700j = abstractC23700j2;
                    try {
                        AbstractC23700j<Object> m6456x = new AbstractC23477l.C23478a((AbstractC23477l.C23478a) abstractC23477l, c23624f).m6456x(abstractC23698i);
                        abstractC23700j = m6456x;
                        if (m6456x != null) {
                            abstractC23700j = m6456x;
                            concurrentHashMap.put(abstractC23698i, m6456x);
                            abstractC23700j = m6456x;
                        }
                    } catch (C23379k e) {
                    }
                }
            }
        }
        this.f66274e = abstractC23700j;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23382n
    /* renamed from: a */
    public void mo5674a(AbstractC23372g abstractC23372g, AbstractC23388t abstractC23388t) {
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23382n
    /* renamed from: b */
    public void mo5673b(AbstractC23372g abstractC23372g, Object obj) throws IOException {
        throw new UnsupportedOperationException("Not implemented for ObjectReader");
    }

    /* renamed from: c */
    public Object m5672c(AbstractC23376j abstractC23376j) throws IOException {
        Object obj;
        try {
            AbstractC23477l.C23478a c23478a = new AbstractC23477l.C23478a((AbstractC23477l.C23478a) this.f66271b, this.f66270a, abstractC23376j);
            this.f66270a.m6518v(abstractC23376j, this.f66276g);
            EnumC23381m enumC23381m = ((AbstractC23391c) abstractC23376j).f64765c;
            EnumC23381m enumC23381m2 = enumC23381m;
            if (enumC23381m == null) {
                enumC23381m2 = abstractC23376j.mo5811i2();
                if (enumC23381m2 == null) {
                    c23478a.m6480Z(this.f66273d, "No content to map due to end-of-input", new Object[0]);
                    throw null;
                }
            }
            if (enumC23381m2 == EnumC23381m.VALUE_NULL) {
                Object obj2 = this.f66275f;
                obj = obj2;
                if (obj2 == null) {
                    obj = m5671d(c23478a).mo6233c(c23478a);
                }
            } else {
                if (enumC23381m2 != EnumC23381m.END_ARRAY && enumC23381m2 != EnumC23381m.END_OBJECT) {
                    obj = c23478a.m6787k0(abstractC23376j, this.f66273d, m5671d(c23478a), this.f66275f);
                }
                obj = this.f66275f;
            }
            if (this.f66270a.m6515y(EnumC23694h.FAIL_ON_TRAILING_TOKENS)) {
                AbstractC23698i abstractC23698i = this.f66273d;
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                if (mo5811i2 != null) {
                    Class<?> m5774G = C23914g.m5774G(abstractC23698i);
                    Class<?> cls = m5774G;
                    if (m5774G == null) {
                        Object obj3 = this.f66275f;
                        cls = m5774G;
                        if (obj3 != null) {
                            cls = obj3.getClass();
                        }
                    }
                    c23478a.m6476d0(cls, abstractC23376j, mo5811i2);
                    throw null;
                }
            }
            abstractC23376j.close();
            return obj;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    abstractC23376j.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: d */
    public AbstractC23700j<Object> m5671d(AbstractC23632g abstractC23632g) throws C23733k {
        AbstractC23700j<Object> abstractC23700j = this.f66274e;
        if (abstractC23700j != null) {
            return abstractC23700j;
        }
        AbstractC23698i abstractC23698i = this.f66273d;
        if (abstractC23698i == null) {
            abstractC23632g.mo6466m(null, "No value type configured for ObjectReader");
            throw null;
        }
        AbstractC23700j<Object> abstractC23700j2 = this.f66277h.get(abstractC23698i);
        if (abstractC23700j2 != null) {
            return abstractC23700j2;
        }
        AbstractC23700j<Object> m6456x = abstractC23632g.m6456x(abstractC23698i);
        if (m6456x != null) {
            this.f66277h.put(abstractC23698i, m6456x);
            return m6456x;
        }
        throw new C23616b(abstractC23632g.f65505g, "Cannot find a deserializer for type " + abstractC23698i, abstractC23698i);
    }
}
