package p193e.p1545k.p1546a.p1556c.p1567j0.p1568i;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Objects;
import java.util.Properties;
import p193e.p1545k.p1546a.p1556c.AbstractC23614e;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23705c;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23882l;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23884n;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.j0.i.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/k.class */
public class C23723k extends AbstractC23730r {

    /* renamed from: c */
    public final AbstractC23705c f65748c;

    public C23723k(AbstractC23698i abstractC23698i, C23887o c23887o, AbstractC23705c abstractC23705c) {
        super(abstractC23698i, c23887o);
        this.f65748c = abstractC23705c;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f
    /* renamed from: a */
    public String mo6170a(Object obj) {
        return m6201g(obj, obj.getClass(), this.f65769a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f
    /* renamed from: b */
    public String mo6169b() {
        return "class name used as type id";
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f
    /* renamed from: c */
    public AbstractC23698i mo6168c(AbstractC23614e abstractC23614e, String str) throws IOException {
        return mo6197h(str, abstractC23614e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f
    /* renamed from: e */
    public String mo6167e(Object obj, Class<?> cls) {
        return m6201g(obj, cls, this.f65769a);
    }

    /* renamed from: g */
    public String m6201g(Object obj, Class<?> cls, C23887o c23887o) {
        String str;
        Class<?> cls2;
        C23882l c23882l;
        AbstractC23698i abstractC23698i;
        Class<?> cls3;
        Class<? super Object> cls4 = cls;
        if (C23914g.m5744w(cls)) {
            cls4 = cls;
            if (!cls.isEnum()) {
                cls4 = cls.getSuperclass();
            }
        }
        String name = cls4.getName();
        if (!name.startsWith("java.util.")) {
            str = name;
            if (name.indexOf(36) >= 0) {
                str = name;
                if (C23914g.m5749r(cls4) != null) {
                    str = name;
                    if (C23914g.m5749r(this.f65770b.f65728a) == null) {
                        str = this.f65770b.f65728a.getName();
                    }
                }
            }
        } else if (obj instanceof EnumSet) {
            EnumSet enumSet = (EnumSet) obj;
            if (!enumSet.isEmpty()) {
                cls3 = ((Enum) enumSet.iterator().next()).getDeclaringClass();
            } else {
                Field field = C23914g.C23916b.f66163c.f66164a;
                if (field == null) {
                    throw new IllegalStateException("Cannot figure out type for EnumSet (odd JDK platform?)");
                }
                try {
                    cls3 = (Class) field.get(enumSet);
                } catch (Exception e) {
                    throw new IllegalArgumentException(e);
                }
            }
            str = c23887o.m5909g(EnumSet.class, c23887o.m5913c(null, cls3, C23887o.f66073e)).mo5929T();
        } else {
            str = name;
            if (obj instanceof EnumMap) {
                EnumMap enumMap = (EnumMap) obj;
                if (!enumMap.isEmpty()) {
                    cls2 = ((Enum) enumMap.keySet().iterator().next()).getDeclaringClass();
                } else {
                    Field field2 = C23914g.C23916b.f66163c.f66165b;
                    if (field2 == null) {
                        throw new IllegalStateException("Cannot figure out type for EnumMap (odd JDK platform?)");
                    }
                    try {
                        cls2 = (Class) field2.get(enumMap);
                    } catch (Exception e2) {
                        throw new IllegalArgumentException(e2);
                    }
                }
                Objects.requireNonNull(c23887o);
                if (EnumMap.class == Properties.class) {
                    c23882l = C23887o.f66086r;
                    abstractC23698i = c23882l;
                } else {
                    C23884n c23884n = C23887o.f66073e;
                    c23882l = c23887o.m5913c(null, cls2, c23884n);
                    abstractC23698i = c23887o.m5913c(null, Object.class, c23884n);
                }
                str = c23887o.m5906j(EnumMap.class, c23882l, abstractC23698i).mo5929T();
            }
        }
        return str;
    }

    /* renamed from: h */
    public AbstractC23698i mo6197h(String str, AbstractC23614e abstractC23614e) throws IOException {
        AbstractC23698i abstractC23698i;
        AbstractC23698i abstractC23698i2 = this.f65770b;
        AbstractC23705c abstractC23705c = this.f65748c;
        Objects.requireNonNull(abstractC23614e);
        AbstractC23705c.EnumC23707b enumC23707b = AbstractC23705c.EnumC23707b.ALLOWED;
        AbstractC23705c.EnumC23707b enumC23707b2 = AbstractC23705c.EnumC23707b.DENIED;
        int indexOf = str.indexOf(60);
        if (indexOf > 0) {
            AbstractC23458k<?> mo6472h = abstractC23614e.mo6472h();
            AbstractC23705c.EnumC23707b mo6199b = abstractC23705c.mo6199b(mo6472h, abstractC23698i2, str.substring(0, indexOf));
            if (mo6199b == enumC23707b2) {
                abstractC23614e.m6526e(abstractC23698i2, str, abstractC23705c);
                throw null;
            }
            AbstractC23698i m5908h = abstractC23614e.mo6470i().m5908h(str);
            if (!m5908h.m6237I(abstractC23698i2.f65728a)) {
                throw abstractC23614e.mo6468j(abstractC23698i2, str, "Not a subtype");
            }
            abstractC23698i = m5908h;
            if (mo6199b != enumC23707b) {
                if (abstractC23705c.mo6198c(mo6472h, abstractC23698i2, m5908h) != enumC23707b) {
                    abstractC23614e.m6527d(abstractC23698i2, str, abstractC23705c);
                    throw null;
                }
                abstractC23698i = m5908h;
            }
        } else {
            AbstractC23458k<?> mo6472h2 = abstractC23614e.mo6472h();
            AbstractC23705c.EnumC23707b mo6199b2 = abstractC23705c.mo6199b(mo6472h2, abstractC23698i2, str);
            if (mo6199b2 == enumC23707b2) {
                abstractC23614e.m6526e(abstractC23698i2, str, abstractC23705c);
                throw null;
            }
            try {
                Class<?> m5903m = abstractC23614e.mo6470i().m5903m(str);
                if (!abstractC23698i2.m6236J(m5903m)) {
                    throw abstractC23614e.mo6468j(abstractC23698i2, str, "Not a subtype");
                }
                AbstractC23698i m5905k = mo6472h2.f65071b.f65022a.m5905k(abstractC23698i2, m5903m, false);
                abstractC23698i = m5905k;
                if (mo6199b2 == AbstractC23705c.EnumC23707b.INDETERMINATE) {
                    if (abstractC23705c.mo6198c(mo6472h2, abstractC23698i2, m5905k) != enumC23707b) {
                        abstractC23614e.m6527d(abstractC23698i2, str, abstractC23705c);
                        throw null;
                    }
                    abstractC23698i = m5905k;
                }
            } catch (ClassNotFoundException e) {
                abstractC23698i = null;
            } catch (Exception e2) {
                throw abstractC23614e.mo6468j(abstractC23698i2, str, String.format("problem: (%s) %s", e2.getClass().getName(), C23914g.m5757j(e2)));
            }
        }
        if (abstractC23698i != null || !(abstractC23614e instanceof AbstractC23632g)) {
            return abstractC23698i;
        }
        ((AbstractC23632g) abstractC23614e).m6495K(this.f65770b, str, this, "no such class found");
        return null;
    }
}
