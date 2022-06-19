package p193e.p1545k.p1546a.p1556c.p1559d0;

import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.AbstractC23940o;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23657g;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.t */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/t.class */
public class C23486t implements Serializable {

    /* renamed from: a */
    public final AbstractC23462d f65160a;

    /* renamed from: b */
    public final AbstractC23663i f65161b;

    /* renamed from: c */
    public final boolean f65162c;

    /* renamed from: d */
    public final AbstractC23698i f65163d;

    /* renamed from: e */
    public AbstractC23700j<Object> f65164e;

    /* renamed from: f */
    public final AbstractC23709e f65165f;

    /* renamed from: g */
    public final AbstractC23940o f65166g;

    /* renamed from: e.k.a.c.d0.t$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/t$a.class */
    public static class C23487a extends C23502c0.AbstractC23503a {

        /* renamed from: b */
        public final C23486t f65167b;

        /* renamed from: c */
        public final Object f65168c;

        /* renamed from: d */
        public final String f65169d;

        public C23487a(C23486t c23486t, C23490v c23490v, Class<?> cls, Object obj, String str) {
            super(c23490v, cls);
            this.f65167b = c23486t;
            this.f65168c = obj;
            this.f65169d = str;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0.AbstractC23503a
        /* renamed from: a */
        public void mo6544a(Object obj, Object obj2) throws IOException {
            if (obj.equals(this.f65219a.f65183d.f65216b.f64507c)) {
                this.f65167b.m6766c(this.f65168c, this.f65169d, obj2);
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Trying to resolve a forward reference with id [");
            m8728C.append(obj.toString());
            m8728C.append("] that wasn't previously registered.");
            throw new IllegalArgumentException(m8728C.toString());
        }
    }

    public C23486t(AbstractC23462d abstractC23462d, AbstractC23663i abstractC23663i, AbstractC23698i abstractC23698i, AbstractC23940o abstractC23940o, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e) {
        this.f65160a = abstractC23462d;
        this.f65161b = abstractC23663i;
        this.f65163d = abstractC23698i;
        this.f65164e = abstractC23700j;
        this.f65165f = abstractC23709e;
        this.f65166g = abstractC23940o;
        this.f65162c = abstractC23663i instanceof C23657g;
    }

    /* renamed from: a */
    public Object m6768a(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_NULL)) {
            return this.f65164e.mo6233c(abstractC23632g);
        }
        AbstractC23709e abstractC23709e = this.f65165f;
        return abstractC23709e != null ? this.f65164e.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e) : this.f65164e.mo6232d(abstractC23376j, abstractC23632g);
    }

    /* renamed from: b */
    public final void m6767b(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj, String str) throws IOException {
        try {
            AbstractC23940o abstractC23940o = this.f65166g;
            m6766c(obj, abstractC23940o == null ? str : abstractC23940o.mo5684a(str, abstractC23632g), m6768a(abstractC23376j, abstractC23632g));
        } catch (C23490v e) {
            if (this.f65164e.mo6224l() == null) {
                throw new C23733k(abstractC23376j, "Unresolved forward reference but no identity info.", e);
            }
            e.f65183d.m6721a(new C23487a(this, e, this.f65163d.f65728a, obj, str));
        }
    }

    /* renamed from: c */
    public void m6766c(Object obj, Object obj2, Object obj3) throws IOException {
        try {
            if (!this.f65162c) {
                ((C23664j) this.f65161b).f65619d.invoke(obj, obj2, obj3);
                return;
            }
            Map map = (Map) ((C23657g) this.f65161b).mo6374j(obj);
            if (map == null) {
                return;
            }
            map.put(obj2, obj3);
        } catch (Exception e) {
            if (!(e instanceof IllegalArgumentException)) {
                C23914g.m5771J(e);
                C23914g.m5770K(e);
                Throwable m5748s = C23914g.m5748s(e);
                throw new C23733k((Closeable) null, C23914g.m5757j(m5748s), m5748s);
            }
            String m5761f = C23914g.m5761f(obj3);
            StringBuilder sb = new StringBuilder("Problem deserializing \"any\" property '");
            sb.append(obj2);
            StringBuilder m8728C = C22128a.m8728C("' of class ");
            m8728C.append(this.f65161b.mo6376g().getName());
            m8728C.append(" (expected type: ");
            sb.append(m8728C.toString());
            sb.append(this.f65163d);
            sb.append("; actual type: ");
            sb.append(m5761f);
            sb.append(")");
            String m5757j = C23914g.m5757j(e);
            if (m5757j != null) {
                sb.append(", problem: ");
                sb.append(m5757j);
            } else {
                sb.append(" (no error message provided)");
            }
            throw new C23733k((Closeable) null, sb.toString(), e);
        }
    }

    public Object readResolve() {
        AbstractC23663i abstractC23663i = this.f65161b;
        if (abstractC23663i == null || abstractC23663i.mo6379b() == null) {
            throw new IllegalArgumentException("Missing method (broken JDK (de)serialization?)");
        }
        return this;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[any property on class ");
        m8728C.append(this.f65161b.mo6376g().getName());
        m8728C.append("]");
        return m8728C.toString();
    }
}
