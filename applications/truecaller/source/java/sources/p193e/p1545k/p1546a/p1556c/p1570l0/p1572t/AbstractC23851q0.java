package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23455i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23770l;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.l0.t.q0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/q0.class */
public abstract class AbstractC23851q0<T> extends AbstractC23890n<T> implements Object {

    /* renamed from: b */
    public static final Object f65983b = new Object();

    /* renamed from: a */
    public final Class<T> f65984a;

    public AbstractC23851q0(AbstractC23698i abstractC23698i) {
        this.f65984a = (Class<T>) abstractC23698i.f65728a;
    }

    public AbstractC23851q0(AbstractC23851q0<?> abstractC23851q0) {
        this.f65984a = (Class<T>) abstractC23851q0.f65984a;
    }

    public AbstractC23851q0(Class<T> cls) {
        this.f65984a = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC23851q0(Class<?> cls, boolean z) {
        this.f65984a = cls;
    }

    /* renamed from: j */
    public static final boolean m6016j(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? false : true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: c */
    public Class<T> mo5897c() {
        return this.f65984a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k */
    public AbstractC23890n<?> m6015k(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d, AbstractC23890n<?> abstractC23890n) throws C23733k {
        IdentityHashMap identityHashMap;
        C23833j0 c23833j0;
        AbstractC23663i mo6108c;
        Object mo6306Q;
        AbstractC23455i.C23456a c23456a;
        Object obj = f65983b;
        Map map = (Map) abstractC23425a0.m6894F(obj);
        if (map != null) {
            identityHashMap = map;
            if (map.get(abstractC23462d) != null) {
                return abstractC23890n;
            }
        } else {
            IdentityHashMap identityHashMap2 = new IdentityHashMap();
            AbstractC23455i.C23456a c23456a2 = (AbstractC23455i.C23456a) abstractC23425a0.f64995e;
            Map<Object, Object> map2 = c23456a2.f65064b;
            if (map2 == null) {
                HashMap hashMap = new HashMap();
                hashMap.put(obj, identityHashMap2 == null ? AbstractC23455i.C23456a.f65062d : identityHashMap2);
                c23456a = new AbstractC23455i.C23456a(c23456a2.f65063a, hashMap);
            } else {
                map2.put(obj, identityHashMap2);
                c23456a = c23456a2;
            }
            abstractC23425a0.f64995e = c23456a;
            identityHashMap = identityHashMap2;
        }
        identityHashMap.put(abstractC23462d, Boolean.TRUE);
        try {
            AbstractC23426b m6895E = abstractC23425a0.m6895E();
            if (!m6016j(m6895E, abstractC23462d) || (mo6108c = abstractC23462d.mo6108c()) == null || (mo6306Q = m6895E.mo6306Q(mo6108c)) == null) {
                c23833j0 = abstractC23890n;
            } else {
                AbstractC23918i<Object, Object> m6524g = abstractC23425a0.m6524g(abstractC23462d.mo6108c(), mo6306Q);
                AbstractC23698i mo5736b = m6524g.mo5736b(abstractC23425a0.mo6470i());
                c23833j0 = new C23833j0(m6524g, mo5736b, (abstractC23890n != null || mo5736b.m6240E()) ? abstractC23890n : abstractC23425a0.m6898B(mo5736b));
            }
            if (c23833j0 == null) {
                return abstractC23890n;
            }
            AbstractC23890n<?> m6891I = abstractC23425a0.m6891I(c23833j0, abstractC23462d);
            identityHashMap.remove(abstractC23462d);
            return m6891I;
        } finally {
            identityHashMap.remove(abstractC23462d);
        }
    }

    /* renamed from: l */
    public AbstractC23311k.C23315d m6014l(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d, Class<?> cls) {
        return abstractC23462d != null ? abstractC23462d.mo6330e(abstractC23425a0.f64991a, cls) : abstractC23425a0.f64991a.mo6856h(cls);
    }

    /* renamed from: m */
    public AbstractC23770l m6013m(AbstractC23425a0 abstractC23425a0, Object obj, Object obj2) throws C23733k {
        Objects.requireNonNull(abstractC23425a0.f64991a);
        Class<T> cls = this.f65984a;
        abstractC23425a0.m6521n(cls, "Cannot resolve PropertyFilter with id '" + obj + "'; no FilterProvider configured");
        throw null;
    }

    /* renamed from: n */
    public void m6012n(AbstractC23425a0 abstractC23425a0, Throwable th, Object obj, int i) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        C23914g.m5772I(th);
        boolean z = abstractC23425a0 == null || abstractC23425a0.m6889M(EnumC23958z.WRAP_EXCEPTIONS);
        if (th instanceof IOException) {
            if (!z || !(th instanceof C23733k)) {
                throw ((IOException) th);
            }
        } else if (!z) {
            C23914g.m5770K(th);
        }
        throw C23733k.m6158i(th, obj, i);
    }

    /* renamed from: o */
    public void m6011o(AbstractC23425a0 abstractC23425a0, Throwable th, Object obj, String str) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        C23914g.m5772I(th);
        boolean z = abstractC23425a0 == null || abstractC23425a0.m6889M(EnumC23958z.WRAP_EXCEPTIONS);
        if (th instanceof IOException) {
            if (!z || !(th instanceof C23733k)) {
                throw ((IOException) th);
            }
        } else if (!z) {
            C23914g.m5770K(th);
        }
        throw C23733k.m6157j(th, obj, str);
    }
}
