package p193e.p1545k.p1546a.p1556c.p1570l0;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.C23957y;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23616b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23804u;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.l0.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/j.class */
public abstract class AbstractC23767j extends AbstractC23425a0 implements Serializable {

    /* renamed from: o */
    public transient Map<Object, C23804u> f65863o;

    /* renamed from: p */
    public transient ArrayList<AbstractC23316k0<?>> f65864p;

    /* renamed from: q */
    public transient AbstractC23372g f65865q;

    /* renamed from: e.k.a.c.l0.j$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/j$a.class */
    public static final class C23768a extends AbstractC23767j {
        public C23768a() {
        }

        public C23768a(AbstractC23425a0 abstractC23425a0, C23957y c23957y, AbstractC23774p abstractC23774p) {
            super(abstractC23425a0, c23957y, abstractC23774p);
        }
    }

    public AbstractC23767j() {
    }

    public AbstractC23767j(AbstractC23425a0 abstractC23425a0, C23957y c23957y, AbstractC23774p abstractC23774p) {
        super(abstractC23425a0, c23957y, abstractC23774p);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23425a0
    /* renamed from: J */
    public Object mo6099J(AbstractC23681s abstractC23681s, Class<?> cls) {
        if (cls == null) {
            return null;
        }
        Objects.requireNonNull(this.f64991a.f65071b);
        return C23914g.m5758i(cls, this.f64991a.m6867b());
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23425a0
    /* renamed from: K */
    public boolean mo6098K(Object obj) throws C23733k {
        try {
            return obj.equals(null);
        } catch (Throwable th) {
            C23616b c23616b = new C23616b(this.f65865q, String.format("Problem determining whether filter of type '%s' should filter out `null` values: (%s) %s", obj.getClass().getName(), th.getClass().getName(), C23914g.m5757j(th)), m6525f(obj.getClass()));
            c23616b.initCause(th);
            throw c23616b;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23425a0
    /* renamed from: Q */
    public AbstractC23890n<Object> mo6097Q(AbstractC23636b abstractC23636b, Object obj) throws C23733k {
        AbstractC23890n<Object> abstractC23890n;
        if (obj instanceof AbstractC23890n) {
            abstractC23890n = (AbstractC23890n) obj;
        } else if (!(obj instanceof Class)) {
            AbstractC23698i mo6377e = abstractC23636b.mo6377e();
            StringBuilder m8728C = C22128a.m8728C("AnnotationIntrospector returned serializer definition of type ");
            m8728C.append(obj.getClass().getName());
            m8728C.append("; expected type JsonSerializer or Class<JsonSerializer> instead");
            mo6466m(mo6377e, m8728C.toString());
            throw null;
        } else {
            Class cls = (Class) obj;
            if (cls == AbstractC23890n.AbstractC23891a.class || C23914g.m5745v(cls)) {
                return null;
            }
            if (!AbstractC23890n.class.isAssignableFrom(cls)) {
                AbstractC23698i mo6377e2 = abstractC23636b.mo6377e();
                StringBuilder m8728C2 = C22128a.m8728C("AnnotationIntrospector returned Class ");
                m8728C2.append(cls.getName());
                m8728C2.append("; expected Class<JsonSerializer>");
                mo6466m(mo6377e2, m8728C2.toString());
                throw null;
            }
            Objects.requireNonNull(this.f64991a.f65071b);
            abstractC23890n = (AbstractC23890n) C23914g.m5758i(cls, this.f64991a.m6867b());
        }
        if (abstractC23890n instanceof AbstractC23772n) {
            ((AbstractC23772n) abstractC23890n).mo6025a(this);
        }
        return abstractC23890n;
    }

    /* renamed from: R */
    public final void m6096R(AbstractC23372g abstractC23372g, Object obj, AbstractC23890n<Object> abstractC23890n) throws IOException {
        try {
            abstractC23890n.mo5894f(obj, abstractC23372g, this);
        } catch (Exception e) {
            throw m6093U(abstractC23372g, e);
        }
    }

    /* renamed from: S */
    public final void m6095S(AbstractC23372g abstractC23372g, Object obj, AbstractC23890n<Object> abstractC23890n, C23951v c23951v) throws IOException {
        try {
            abstractC23372g.mo5875M1();
            abstractC23372g.mo5833z0(c23951v.m5660f(this.f64991a));
            abstractC23890n.mo5894f(obj, abstractC23372g, this);
            abstractC23372g.mo5840t0();
        } catch (Exception e) {
            throw m6093U(abstractC23372g, e);
        }
    }

    /* renamed from: T */
    public void m6094T(AbstractC23372g abstractC23372g) throws IOException {
        try {
            this.f64998h.mo5894f(null, abstractC23372g, this);
        } catch (Exception e) {
            throw m6093U(abstractC23372g, e);
        }
    }

    /* renamed from: U */
    public final IOException m6093U(AbstractC23372g abstractC23372g, Exception exc) {
        if (exc instanceof IOException) {
            return (IOException) exc;
        }
        String m5757j = C23914g.m5757j(exc);
        String str = m5757j;
        if (m5757j == null) {
            StringBuilder m8728C = C22128a.m8728C("[no message for ");
            m8728C.append(exc.getClass().getName());
            m8728C.append("]");
            str = m8728C.toString();
        }
        return new C23733k(abstractC23372g, str, exc);
    }

    /* renamed from: V */
    public void m6092V(AbstractC23372g abstractC23372g, Object obj) throws IOException {
        this.f65865q = abstractC23372g;
        if (obj == null) {
            m6094T(abstractC23372g);
            return;
        }
        Class<?> cls = obj.getClass();
        AbstractC23890n<Object> m6899A = m6899A(cls, true, null);
        C23957y c23957y = this.f64991a;
        C23951v c23951v = c23957y.f65076e;
        if (c23951v == null) {
            if (c23957y.m5650w(EnumC23958z.WRAP_ROOT_VALUE)) {
                C23957y c23957y2 = this.f64991a;
                C23951v c23951v2 = c23957y2.f65076e;
                if (c23951v2 == null) {
                    c23951v2 = c23957y2.f65079h.m5713a(cls, c23957y2);
                }
                m6095S(abstractC23372g, obj, m6899A, c23951v2);
                return;
            }
        } else if (!c23951v.m5661e()) {
            m6095S(abstractC23372g, obj, m6899A, c23951v);
            return;
        }
        m6096R(abstractC23372g, obj, m6899A);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23425a0
    /* renamed from: x */
    public C23804u mo6091x(Object obj, AbstractC23316k0<?> abstractC23316k0) {
        AbstractC23316k0<?> abstractC23316k02;
        Map<Object, C23804u> map = this.f65863o;
        if (map == null) {
            this.f65863o = m6889M(EnumC23958z.USE_EQUALITY_FOR_OBJECT_ID) ? new HashMap() : new IdentityHashMap();
        } else {
            C23804u c23804u = map.get(obj);
            if (c23804u != null) {
                return c23804u;
            }
        }
        ArrayList<AbstractC23316k0<?>> arrayList = this.f65864p;
        if (arrayList != null) {
            int i = 0;
            int size = arrayList.size();
            while (true) {
                abstractC23316k02 = null;
                if (i >= size) {
                    break;
                }
                abstractC23316k02 = this.f65864p.get(i);
                if (abstractC23316k02.mo6067a(abstractC23316k0)) {
                    break;
                }
                i++;
            }
        } else {
            this.f65864p = new ArrayList<>(8);
            abstractC23316k02 = null;
        }
        AbstractC23316k0<?> abstractC23316k03 = abstractC23316k02;
        if (abstractC23316k02 == null) {
            abstractC23316k03 = abstractC23316k0.mo6063f(this);
            this.f65864p.add(abstractC23316k03);
        }
        C23804u c23804u2 = new C23804u(abstractC23316k03);
        this.f65863o.put(obj, c23804u2);
        return c23804u2;
    }
}
