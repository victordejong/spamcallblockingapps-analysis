package p193e.p1545k.p1546a.p1556c;

import java.lang.reflect.Type;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1547a.AbstractC23323n0;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23635a0;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23705c;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/e.class */
public abstract class AbstractC23614e {
    /* renamed from: a */
    public String m6530a(String str, String str2) {
        return str2 == null ? str : C22128a.m8725C2(str, ": ", str2);
    }

    /* renamed from: b */
    public final String m6529b(String str, Object... objArr) {
        String str2 = str;
        if (objArr.length > 0) {
            str2 = String.format(str, objArr);
        }
        return str2;
    }

    /* renamed from: c */
    public String m6528c(String str) {
        if (str == null) {
            return "[N/A]";
        }
        if (str.length() > 500) {
            str = str.substring(0, 500) + "]...[" + str.substring(str.length() - 500);
        }
        return String.format("\"%s\"", str);
    }

    /* renamed from: d */
    public <T> T m6527d(AbstractC23698i abstractC23698i, String str, AbstractC23705c abstractC23705c) throws C23733k {
        StringBuilder m8728C = C22128a.m8728C("Configured `PolymorphicTypeValidator` (of type ");
        m8728C.append(C23914g.m5761f(abstractC23705c));
        m8728C.append(") denied resolution");
        throw mo6468j(abstractC23698i, str, m8728C.toString());
    }

    /* renamed from: e */
    public <T> T m6526e(AbstractC23698i abstractC23698i, String str, AbstractC23705c abstractC23705c) throws C23733k {
        StringBuilder m8728C = C22128a.m8728C("Configured `PolymorphicTypeValidator` (of type ");
        m8728C.append(C23914g.m5761f(abstractC23705c));
        m8728C.append(") denied resolution");
        throw mo6468j(abstractC23698i, str, m8728C.toString());
    }

    /* renamed from: f */
    public AbstractC23698i m6525f(Type type) {
        if (type == null) {
            return null;
        }
        return mo6470i().m5914b(null, type, C23887o.f66073e);
    }

    /* renamed from: g */
    public AbstractC23918i<Object, Object> m6524g(AbstractC23636b abstractC23636b, Object obj) throws C23733k {
        if (obj == null) {
            return null;
        }
        if (obj instanceof AbstractC23918i) {
            return (AbstractC23918i) obj;
        }
        if (!(obj instanceof Class)) {
            throw new IllegalStateException(C22128a.m8631d2(obj, C22128a.m8728C("AnnotationIntrospector returned Converter definition of type "), "; expected type Converter or Class<Converter> instead"));
        }
        Class cls = (Class) obj;
        if (cls == AbstractC23918i.AbstractC23919a.class || C23914g.m5745v(cls)) {
            return null;
        }
        if (!AbstractC23918i.class.isAssignableFrom(cls)) {
            throw new IllegalStateException(C22128a.m8639b2(cls, C22128a.m8728C("AnnotationIntrospector returned Class "), "; expected Class<Converter>"));
        }
        AbstractC23458k<?> mo6472h = mo6472h();
        Objects.requireNonNull(mo6472h.f65071b);
        return (AbstractC23918i) C23914g.m5758i(cls, mo6472h.m6867b());
    }

    /* renamed from: h */
    public abstract AbstractC23458k<?> mo6472h();

    /* renamed from: i */
    public abstract C23887o mo6470i();

    /* renamed from: j */
    public abstract C23733k mo6468j(AbstractC23698i abstractC23698i, String str, String str2);

    /* renamed from: k */
    public AbstractC23316k0<?> m6523k(AbstractC23636b abstractC23636b, C23635a0 c23635a0) throws C23733k {
        Class<? extends AbstractC23316k0<?>> cls = c23635a0.f65512b;
        AbstractC23458k<?> mo6472h = mo6472h();
        Objects.requireNonNull(mo6472h.f65071b);
        return ((AbstractC23316k0) C23914g.m5758i(cls, mo6472h.m6867b())).mo6066b(c23635a0.f65514d);
    }

    /* renamed from: l */
    public AbstractC23323n0 m6522l(AbstractC23636b abstractC23636b, C23635a0 c23635a0) {
        Class<? extends AbstractC23323n0> cls = c23635a0.f65513c;
        AbstractC23458k<?> mo6472h = mo6472h();
        Objects.requireNonNull(mo6472h.f65071b);
        return (AbstractC23323n0) C23914g.m5758i(cls, mo6472h.m6867b());
    }

    /* renamed from: m */
    public abstract <T> T mo6466m(AbstractC23698i abstractC23698i, String str) throws C23733k;

    /* renamed from: n */
    public <T> T m6521n(Class<?> cls, String str) throws C23733k {
        return (T) mo6466m(m6525f(cls), str);
    }
}
