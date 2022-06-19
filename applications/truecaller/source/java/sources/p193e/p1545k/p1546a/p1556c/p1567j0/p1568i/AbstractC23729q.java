package p193e.p1545k.p1546a.p1556c.p1567j0.p1568i;

import java.io.IOException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23588u;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.j0.i.q */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/q.class */
public abstract class AbstractC23729q extends AbstractC23709e implements Serializable {

    /* renamed from: a */
    public final AbstractC23710f f65761a;

    /* renamed from: b */
    public final AbstractC23698i f65762b;

    /* renamed from: c */
    public final AbstractC23462d f65763c;

    /* renamed from: d */
    public final AbstractC23698i f65764d;

    /* renamed from: e */
    public final String f65765e;

    /* renamed from: f */
    public final boolean f65766f;

    /* renamed from: g */
    public final Map<String, AbstractC23700j<Object>> f65767g;

    /* renamed from: h */
    public AbstractC23700j<Object> f65768h;

    public AbstractC23729q(AbstractC23698i abstractC23698i, AbstractC23710f abstractC23710f, String str, boolean z, AbstractC23698i abstractC23698i2) {
        this.f65762b = abstractC23698i;
        this.f65761a = abstractC23710f;
        Annotation[] annotationArr = C23914g.f66156a;
        this.f65765e = str == null ? "" : str;
        this.f65766f = z;
        this.f65767g = new ConcurrentHashMap(16, 0.75f, 2);
        this.f65764d = abstractC23698i2;
        this.f65763c = null;
    }

    public AbstractC23729q(AbstractC23729q abstractC23729q, AbstractC23462d abstractC23462d) {
        this.f65762b = abstractC23729q.f65762b;
        this.f65761a = abstractC23729q.f65761a;
        this.f65765e = abstractC23729q.f65765e;
        this.f65766f = abstractC23729q.f65766f;
        this.f65767g = abstractC23729q.f65767g;
        this.f65764d = abstractC23729q.f65764d;
        this.f65768h = abstractC23729q.f65768h;
        this.f65763c = abstractC23462d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: g */
    public Class<?> mo6180g() {
        return C23914g.m5774G(this.f65764d);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: h */
    public final String mo6179h() {
        return this.f65765e;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: i */
    public AbstractC23710f mo6178i() {
        return this.f65761a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: k */
    public boolean mo6177k() {
        return this.f65764d != null;
    }

    /* renamed from: l */
    public Object m6176l(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        return m6174n(abstractC23632g, obj instanceof String ? (String) obj : String.valueOf(obj)).mo6232d(abstractC23376j, abstractC23632g);
    }

    /* renamed from: m */
    public final AbstractC23700j<Object> m6175m(AbstractC23632g abstractC23632g) throws IOException {
        AbstractC23700j<Object> abstractC23700j;
        AbstractC23698i abstractC23698i = this.f65764d;
        if (abstractC23698i == null) {
            if (abstractC23632g.m6488R(EnumC23694h.FAIL_ON_INVALID_SUBTYPE)) {
                return null;
            }
            return C23588u.f65433d;
        } else if (C23914g.m5745v(abstractC23698i.f65728a)) {
            return C23588u.f65433d;
        } else {
            synchronized (this.f65764d) {
                if (this.f65768h == null) {
                    this.f65768h = abstractC23632g.m6461s(this.f65764d, this.f65763c);
                }
                abstractC23700j = this.f65768h;
            }
            return abstractC23700j;
        }
    }

    /* renamed from: n */
    public final AbstractC23700j<Object> m6174n(AbstractC23632g abstractC23632g, String str) throws IOException {
        AbstractC23700j<Object> abstractC23700j = this.f65767g.get(str);
        AbstractC23700j<Object> abstractC23700j2 = abstractC23700j;
        if (abstractC23700j == null) {
            AbstractC23698i mo6168c = this.f65761a.mo6168c(abstractC23632g, str);
            boolean z = true;
            if (mo6168c == null) {
                AbstractC23700j<Object> m6175m = m6175m(abstractC23632g);
                abstractC23700j2 = m6175m;
                if (m6175m == null) {
                    String mo6169b = this.f65761a.mo6169b();
                    String m8543z2 = mo6169b == null ? "type ids are not statically known" : C22128a.m8543z2("known type ids = ", mo6169b);
                    AbstractC23462d abstractC23462d = this.f65763c;
                    String str2 = m8543z2;
                    if (abstractC23462d != null) {
                        str2 = String.format("%s (for POJO property '%s')", m8543z2, abstractC23462d.getName());
                    }
                    abstractC23632g.m6495K(this.f65762b, str, this.f65761a, str2);
                    return C23588u.f65433d;
                }
            } else {
                AbstractC23698i abstractC23698i = this.f65762b;
                AbstractC23698i abstractC23698i2 = mo6168c;
                if (abstractC23698i != null) {
                    abstractC23698i2 = mo6168c;
                    if (abstractC23698i.getClass() == mo6168c.getClass()) {
                        abstractC23698i2 = mo6168c;
                        if (!mo6168c.mo5987s()) {
                            try {
                                abstractC23698i2 = this.f65762b;
                                Class<?> cls = mo6168c.f65728a;
                                Objects.requireNonNull(abstractC23632g);
                                if (abstractC23698i2.f65728a != cls) {
                                    z = false;
                                }
                                if (!z) {
                                    abstractC23698i2 = abstractC23632g.f65501c.f65071b.f65022a.m5905k(abstractC23698i2, cls, false);
                                }
                            } catch (IllegalArgumentException e) {
                                throw abstractC23632g.mo6468j(this.f65762b, str, e.getMessage());
                            }
                        }
                    }
                }
                abstractC23700j2 = abstractC23632g.m6461s(abstractC23698i2, this.f65763c);
            }
            this.f65767g.put(str, abstractC23700j2);
        }
        return abstractC23700j2;
    }

    /* renamed from: o */
    public String m6173o() {
        return this.f65762b.f65728a.getName();
    }

    public String toString() {
        StringBuilder m8558w = C22128a.m8558w('[');
        m8558w.append(getClass().getName());
        m8558w.append("; base-type:");
        m8558w.append(this.f65762b);
        m8558w.append("; id-resolver: ");
        m8558w.append(this.f65761a);
        m8558w.append(']');
        return m8558w.toString();
    }
}
