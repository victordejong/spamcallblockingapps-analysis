package p193e.p1545k.p1546a.p1556c;

import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import p193e.p1545k.p1546a.p1547a.AbstractC23299f;
import p193e.p1545k.p1546a.p1547a.EnumC23328p0;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.AbstractC23382n;
import p193e.p1545k.p1546a.p1548b.AbstractC23383o;
import p193e.p1545k.p1546a.p1548b.AbstractC23388t;
import p193e.p1545k.p1546a.p1548b.C23366b;
import p193e.p1545k.p1546a.p1548b.C23369e;
import p193e.p1545k.p1546a.p1548b.C23371f;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23354f;
import p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23445a;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23447c;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23452g;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23477l;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23471f;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23616b;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23620f;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23659g0;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23649d0;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23680r;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23686w;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23690x;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23708d;
import p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23724l;
import p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23726n;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23749o;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23751q;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23767j;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23774p;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23763f;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23937x;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23939z;
/* renamed from: e.k.a.c.r */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/r.class */
public class C23944r extends AbstractC23382n implements Serializable {

    /* renamed from: l */
    public static final AbstractC23426b f66257l;

    /* renamed from: m */
    public static final C23445a f66258m;

    /* renamed from: a */
    public final C23369e f66259a;

    /* renamed from: b */
    public C23887o f66260b;

    /* renamed from: c */
    public AbstractC23708d f66261c;

    /* renamed from: d */
    public final C23452g f66262d;

    /* renamed from: e */
    public final C23447c f66263e;

    /* renamed from: f */
    public C23957y f66264f;

    /* renamed from: g */
    public AbstractC23767j f66265g;

    /* renamed from: h */
    public AbstractC23774p f66266h;

    /* renamed from: i */
    public C23624f f66267i;

    /* renamed from: j */
    public AbstractC23477l f66268j;

    /* renamed from: k */
    public final ConcurrentHashMap<AbstractC23698i, AbstractC23700j<Object>> f66269k;

    static {
        C23690x c23690x = new C23690x();
        f66257l = c23690x;
        f66258m = new C23445a(null, c23690x, null, C23887o.f66072d, null, C23939z.f66215m, Locale.getDefault(), null, C23366b.f64606b, C23724l.f65749a, new C23686w.C23688b());
    }

    public C23944r() {
        this(null, null, null);
    }

    public C23944r(C23369e c23369e, AbstractC23767j abstractC23767j, AbstractC23477l abstractC23477l) {
        this.f66269k = new ConcurrentHashMap<>(64, 0.6f, 2);
        if (c23369e == null) {
            this.f66259a = new C23943q(this);
        } else {
            this.f66259a = c23369e;
            if (c23369e.mo5683h() == null) {
                c23369e.f64627f = this;
            }
        }
        this.f66261c = new C23726n();
        C23937x c23937x = new C23937x();
        this.f66260b = C23887o.f66072d;
        C23649d0 c23649d0 = new C23649d0(null);
        C23445a c23445a = f66258m;
        C23680r c23680r = new C23680r();
        c23445a = c23445a.f65023b != c23680r ? new C23445a(c23680r, c23445a.f65024c, c23445a.f65025d, c23445a.f65022a, c23445a.f65027f, c23445a.f65029h, c23445a.f65030i, c23445a.f65031j, c23445a.f65032k, c23445a.f65028g, c23445a.f65026e) : c23445a;
        C23452g c23452g = new C23452g();
        this.f66262d = c23452g;
        C23447c c23447c = new C23447c();
        this.f66263e = c23447c;
        this.f66264f = new C23957y(c23445a, this.f66261c, c23649d0, c23937x, c23452g);
        this.f66267i = new C23624f(c23445a, this.f66261c, c23649d0, c23937x, c23452g, c23447c);
        Objects.requireNonNull(this.f66259a);
        C23957y c23957y = this.f66264f;
        EnumC23942p enumC23942p = EnumC23942p.SORT_PROPERTIES_ALPHABETICALLY;
        if (c23957y.m6859o(enumC23942p)) {
            this.f66264f = this.f66264f.m6850t(enumC23942p);
            this.f66267i = this.f66267i.m6850t(enumC23942p);
        }
        this.f66265g = new AbstractC23767j.C23768a();
        this.f66268j = new AbstractC23477l.C23478a(C23471f.f65147g);
        this.f66266h = C23763f.f65862d;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23382n
    /* renamed from: a */
    public void mo5674a(AbstractC23372g abstractC23372g, AbstractC23388t abstractC23388t) throws IOException, C23379k {
        m5682c("g", abstractC23372g);
        C23957y c23957y = this.f66264f;
        m5678g(c23957y).m6092V(abstractC23372g, abstractC23388t);
        c23957y.m5650w(EnumC23958z.FLUSH_AFTER_WRITE_VALUE);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23382n
    /* renamed from: b */
    public void mo5673b(AbstractC23372g abstractC23372g, Object obj) throws IOException, C23371f, C23733k {
        m5682c("g", abstractC23372g);
        C23957y c23957y = this.f66264f;
        if (c23957y.m5650w(EnumC23958z.INDENT_OUTPUT) && abstractC23372g.f64640a == null) {
            AbstractC23383o abstractC23383o = c23957y.f66311l;
            AbstractC23383o abstractC23383o2 = abstractC23383o;
            if (abstractC23383o instanceof AbstractC23354f) {
                abstractC23383o2 = (AbstractC23383o) ((AbstractC23354f) abstractC23383o).createInstance();
            }
            abstractC23372g.f64640a = abstractC23383o2;
        }
        if (!c23957y.m5650w(EnumC23958z.CLOSE_CLOSEABLE) || !(obj instanceof Closeable)) {
            AbstractC23767j abstractC23767j = this.f66265g;
            AbstractC23774p abstractC23774p = this.f66266h;
            AbstractC23767j.C23768a c23768a = (AbstractC23767j.C23768a) abstractC23767j;
            Objects.requireNonNull(c23768a);
            new AbstractC23767j.C23768a(c23768a, c23957y, abstractC23774p).m6092V(abstractC23372g, obj);
            if (!c23957y.m5650w(EnumC23958z.FLUSH_AFTER_WRITE_VALUE)) {
                return;
            }
            abstractC23372g.flush();
            return;
        }
        Closeable closeable = (Closeable) obj;
        try {
            AbstractC23767j abstractC23767j2 = this.f66265g;
            AbstractC23774p abstractC23774p2 = this.f66266h;
            AbstractC23767j.C23768a c23768a2 = (AbstractC23767j.C23768a) abstractC23767j2;
            Objects.requireNonNull(c23768a2);
            new AbstractC23767j.C23768a(c23768a2, c23957y, abstractC23774p2).m6092V(abstractC23372g, obj);
            if (c23957y.m5650w(EnumC23958z.FLUSH_AFTER_WRITE_VALUE)) {
                abstractC23372g.flush();
            }
            closeable.close();
        } catch (Exception e) {
            C23914g.m5760g(null, closeable, e);
            throw null;
        }
    }

    /* renamed from: c */
    public final void m5682c(String str, Object obj) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(String.format("argument \"%s\" is null", str));
    }

    /* renamed from: d */
    public AbstractC23700j<Object> m5681d(AbstractC23632g abstractC23632g, AbstractC23698i abstractC23698i) throws C23733k {
        AbstractC23700j<Object> abstractC23700j = this.f66269k.get(abstractC23698i);
        if (abstractC23700j != null) {
            return abstractC23700j;
        }
        AbstractC23700j<Object> m6456x = abstractC23632g.m6456x(abstractC23698i);
        if (m6456x != null) {
            this.f66269k.put(abstractC23698i, m6456x);
            return m6456x;
        }
        throw new C23616b(abstractC23632g.f65505g, "Cannot find a deserializer for type " + abstractC23698i, abstractC23698i);
    }

    /* renamed from: e */
    public EnumC23381m m5680e(AbstractC23376j abstractC23376j, AbstractC23698i abstractC23698i) throws IOException {
        C23624f c23624f = this.f66267i;
        int i = c23624f.f65486r;
        if (i != 0) {
            abstractC23376j.mo7171q2(c23624f.f65485q, i);
        }
        int i2 = c23624f.f65488t;
        if (i2 != 0) {
            abstractC23376j.mo7202p2(c23624f.f65487s, i2);
        }
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        EnumC23381m enumC23381m = mo7142l;
        if (mo7142l == null) {
            enumC23381m = abstractC23376j.mo5811i2();
            if (enumC23381m == null) {
                throw new C23620f(abstractC23376j, "No content to map due to end-of-input", abstractC23698i);
            }
        }
        return enumC23381m;
    }

    /* renamed from: f */
    public AbstractC23757l m5679f(AbstractC23376j abstractC23376j) throws IOException {
        C23751q c23751q;
        EnumC23381m mo5811i2;
        try {
            m5682c("t", AbstractC23757l.class);
            AbstractC23698i m5914b = this.f66260b.m5914b(null, AbstractC23757l.class, C23887o.f66073e);
            C23624f c23624f = this.f66267i;
            int i = c23624f.f65486r;
            if (i != 0) {
                abstractC23376j.mo7171q2(c23624f.f65485q, i);
            }
            int i2 = c23624f.f65488t;
            EnumC23381m enumC23381m = ((AbstractC23391c) abstractC23376j).f64765c;
            EnumC23381m enumC23381m2 = enumC23381m;
            if (enumC23381m == null) {
                EnumC23381m mo5811i22 = abstractC23376j.mo5811i2();
                enumC23381m2 = mo5811i22;
                if (mo5811i22 == null) {
                    Objects.requireNonNull(c23624f.f65481m);
                    C23749o c23749o = C23749o.f65821a;
                    abstractC23376j.close();
                    return c23749o;
                }
            }
            AbstractC23477l.C23478a c23478a = new AbstractC23477l.C23478a((AbstractC23477l.C23478a) this.f66268j, c23624f, abstractC23376j);
            if (enumC23381m2 == EnumC23381m.VALUE_NULL) {
                Objects.requireNonNull(c23624f.f65481m);
                c23751q = C23751q.f65823a;
            } else {
                c23751q = (AbstractC23757l) c23478a.m6787k0(abstractC23376j, m5914b, m5681d(c23478a, m5914b), null);
            }
            if (!c23624f.m6515y(EnumC23694h.FAIL_ON_TRAILING_TOKENS) || (mo5811i2 = abstractC23376j.mo5811i2()) == null) {
                abstractC23376j.close();
                return c23751q;
            }
            c23478a.m6476d0(C23914g.m5774G(m5914b), abstractC23376j, mo5811i2);
            throw null;
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

    /* renamed from: g */
    public AbstractC23767j m5678g(C23957y c23957y) {
        AbstractC23767j abstractC23767j = this.f66265g;
        AbstractC23774p abstractC23774p = this.f66266h;
        AbstractC23767j.C23768a c23768a = (AbstractC23767j.C23768a) abstractC23767j;
        Objects.requireNonNull(c23768a);
        return new AbstractC23767j.C23768a(c23768a, c23957y, abstractC23774p);
    }

    /* renamed from: h */
    public final void m5677h(AbstractC23372g abstractC23372g, Object obj) throws IOException {
        Exception e;
        C23957y c23957y = this.f66264f;
        if (!c23957y.m5650w(EnumC23958z.CLOSE_CLOSEABLE) || !(obj instanceof Closeable)) {
            try {
                AbstractC23767j abstractC23767j = this.f66265g;
                AbstractC23774p abstractC23774p = this.f66266h;
                AbstractC23767j.C23768a c23768a = (AbstractC23767j.C23768a) abstractC23767j;
                Objects.requireNonNull(c23768a);
                new AbstractC23767j.C23768a(c23768a, c23957y, abstractC23774p).m6092V(abstractC23372g, obj);
                abstractC23372g.close();
                return;
            } catch (Exception e2) {
                C23914g.m5759h(abstractC23372g, e2);
                throw null;
            }
        }
        Closeable closeable = (Closeable) obj;
        try {
            AbstractC23767j abstractC23767j2 = this.f66265g;
            AbstractC23774p abstractC23774p2 = this.f66266h;
            AbstractC23767j.C23768a c23768a2 = (AbstractC23767j.C23768a) abstractC23767j2;
            Objects.requireNonNull(c23768a2);
            new AbstractC23767j.C23768a(c23768a2, c23957y, abstractC23774p2).m6092V(abstractC23372g, obj);
        } catch (Exception e3) {
            e = e3;
        }
        try {
            closeable.close();
            abstractC23372g.close();
        } catch (Exception e4) {
            e = e4;
            closeable = null;
            C23914g.m5760g(abstractC23372g, closeable, e);
            throw null;
        }
    }

    /* renamed from: i */
    public <T extends AbstractC23388t> T m5676i(AbstractC23376j abstractC23376j) throws IOException, C23379k {
        EnumC23381m mo5811i2;
        m5682c("p", abstractC23376j);
        C23624f c23624f = this.f66267i;
        if (abstractC23376j.mo7142l() == null && abstractC23376j.mo5811i2() == null) {
            return null;
        }
        m5682c("t", AbstractC23757l.class);
        AbstractC23698i m5914b = this.f66260b.m5914b(null, AbstractC23757l.class, C23887o.f66073e);
        EnumC23381m m5680e = m5680e(abstractC23376j, m5914b);
        AbstractC23477l.C23478a c23478a = new AbstractC23477l.C23478a((AbstractC23477l.C23478a) this.f66268j, c23624f, abstractC23376j);
        Object mo6233c = m5680e == EnumC23381m.VALUE_NULL ? m5681d(c23478a, m5914b).mo6233c(c23478a) : (m5680e == EnumC23381m.END_ARRAY || m5680e == EnumC23381m.END_OBJECT) ? null : c23478a.m6787k0(abstractC23376j, m5914b, m5681d(c23478a, m5914b), null);
        abstractC23376j.mo7143j();
        if (c23624f.m6515y(EnumC23694h.FAIL_ON_TRAILING_TOKENS) && (mo5811i2 = abstractC23376j.mo5811i2()) != null) {
            c23478a.m6476d0(C23914g.m5774G(m5914b), abstractC23376j, mo5811i2);
            throw null;
        }
        AbstractC23757l abstractC23757l = (AbstractC23757l) mo6233c;
        C23751q c23751q = abstractC23757l;
        if (abstractC23757l == null) {
            Objects.requireNonNull(this.f66267i.f65481m);
            c23751q = C23751q.f65823a;
        }
        return c23751q;
    }

    /* renamed from: j */
    public C23944r m5675j(EnumC23328p0 enumC23328p0, AbstractC23299f.EnumC23300a enumC23300a) {
        AbstractC23659g0.C23660a c23660a = (AbstractC23659g0.C23660a) this.f66262d.f65054c;
        Objects.requireNonNull(c23660a);
        int ordinal = enumC23328p0.ordinal();
        this.f66262d.f65054c = ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? ordinal != 6 ? c23660a : enumC23300a == AbstractC23299f.EnumC23300a.DEFAULT ? AbstractC23659g0.C23660a.f65605f : new AbstractC23659g0.C23660a(enumC23300a) : c23660a.m6391g(enumC23300a) : c23660a.m6393e(enumC23300a) : c23660a.m6394d(enumC23300a) : c23660a.m6390h(enumC23300a) : c23660a.m6392f(enumC23300a);
        return this;
    }
}
