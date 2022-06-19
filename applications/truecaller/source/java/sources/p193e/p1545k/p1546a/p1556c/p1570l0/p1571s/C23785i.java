package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.IOException;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23898c;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.s.i */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/i.class */
public class C23785i extends AbstractC23765h<Map.Entry<?, ?>> implements AbstractC23766i {

    /* renamed from: c */
    public final AbstractC23462d f65881c;

    /* renamed from: d */
    public final boolean f65882d;

    /* renamed from: e */
    public final AbstractC23698i f65883e;

    /* renamed from: f */
    public final AbstractC23698i f65884f;

    /* renamed from: g */
    public final AbstractC23698i f65885g;

    /* renamed from: h */
    public AbstractC23890n<Object> f65886h;

    /* renamed from: i */
    public AbstractC23890n<Object> f65887i;

    /* renamed from: j */
    public final AbstractC23712h f65888j;

    /* renamed from: k */
    public AbstractC23788l f65889k;

    /* renamed from: l */
    public final Object f65890l;

    /* renamed from: m */
    public final boolean f65891m;

    public C23785i(AbstractC23698i abstractC23698i, AbstractC23698i abstractC23698i2, AbstractC23698i abstractC23698i3, boolean z, AbstractC23712h abstractC23712h, AbstractC23462d abstractC23462d) {
        super(abstractC23698i);
        this.f65883e = abstractC23698i;
        this.f65884f = abstractC23698i2;
        this.f65885g = abstractC23698i3;
        this.f65882d = z;
        this.f65888j = abstractC23712h;
        this.f65881c = abstractC23462d;
        this.f65889k = AbstractC23788l.C23790b.f65903b;
        this.f65890l = null;
        this.f65891m = false;
    }

    public C23785i(C23785i c23785i, AbstractC23890n abstractC23890n, AbstractC23890n abstractC23890n2, Object obj, boolean z) {
        super(Map.class, false);
        this.f65883e = c23785i.f65883e;
        this.f65884f = c23785i.f65884f;
        this.f65885g = c23785i.f65885g;
        this.f65882d = c23785i.f65882d;
        this.f65888j = c23785i.f65888j;
        this.f65886h = abstractC23890n;
        this.f65887i = abstractC23890n2;
        this.f65889k = AbstractC23788l.C23790b.f65903b;
        this.f65881c = c23785i.f65881c;
        this.f65890l = obj;
        this.f65891m = z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    public AbstractC23890n<?> mo5992b(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<Object> abstractC23890n;
        AbstractC23890n<Object> abstractC23890n2;
        AbstractC23331r.EnumC23332a enumC23332a;
        AbstractC23331r.C23333b mo6329f;
        AbstractC23331r.EnumC23332a enumC23332a2;
        AbstractC23331r.EnumC23332a enumC23332a3;
        AbstractC23331r.EnumC23332a enumC23332a4 = AbstractC23331r.EnumC23332a.NON_EMPTY;
        AbstractC23426b m6895E = abstractC23425a0.m6895E();
        AbstractC23663i mo6108c = abstractC23462d == null ? null : abstractC23462d.mo6108c();
        if (mo6108c == null || m6895E == null) {
            abstractC23890n2 = null;
            abstractC23890n = null;
        } else {
            Object mo6261s = m6895E.mo6261s(mo6108c);
            abstractC23890n = mo6261s != null ? abstractC23425a0.mo6097Q(mo6108c, mo6261s) : null;
            Object mo6290d = m6895E.mo6290d(mo6108c);
            abstractC23890n2 = mo6290d != null ? abstractC23425a0.mo6097Q(mo6108c, mo6290d) : null;
        }
        AbstractC23890n<Object> abstractC23890n3 = abstractC23890n2;
        if (abstractC23890n2 == null) {
            abstractC23890n3 = this.f65887i;
        }
        AbstractC23890n<?> m6015k = m6015k(abstractC23425a0, abstractC23462d, abstractC23890n3);
        AbstractC23890n<?> abstractC23890n4 = m6015k;
        if (m6015k == null) {
            abstractC23890n4 = m6015k;
            if (this.f65882d) {
                abstractC23890n4 = m6015k;
                if (!this.f65885g.m6240E()) {
                    abstractC23890n4 = abstractC23425a0.m6879u(this.f65885g, abstractC23462d);
                }
            }
        }
        AbstractC23890n<Object> abstractC23890n5 = abstractC23890n;
        if (abstractC23890n == null) {
            abstractC23890n5 = this.f65886h;
        }
        AbstractC23890n<?> m6877w = abstractC23890n5 == null ? abstractC23425a0.m6877w(this.f65884f, abstractC23462d) : abstractC23425a0.m6891I(abstractC23890n5, abstractC23462d);
        Object obj = this.f65890l;
        boolean z = this.f65891m;
        if (abstractC23462d == null || (mo6329f = abstractC23462d.mo6329f(abstractC23425a0.f64991a, null)) == null || (enumC23332a2 = mo6329f.f64539b) == AbstractC23331r.EnumC23332a.USE_DEFAULTS) {
            enumC23332a = obj;
        } else {
            int ordinal = enumC23332a2.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    enumC23332a3 = enumC23332a4;
                    if (ordinal != 3) {
                        if (ordinal == 4) {
                            Object m2345i0 = C26232y.m2345i0(this.f65885g);
                            enumC23332a3 = m2345i0;
                            if (m2345i0 != null) {
                                enumC23332a3 = m2345i0;
                                if (m2345i0.getClass().isArray()) {
                                    enumC23332a3 = C23898c.m5782a(m2345i0);
                                }
                            }
                        } else if (ordinal != 5) {
                            z = false;
                            enumC23332a = null;
                        } else {
                            enumC23332a3 = abstractC23425a0.mo6099J(null, mo6329f.f64541d);
                            if (enumC23332a3 != null) {
                                z = abstractC23425a0.mo6098K(enumC23332a3);
                                enumC23332a = enumC23332a3;
                            }
                        }
                    }
                } else {
                    enumC23332a3 = this.f65885g.mo5949d() ? enumC23332a4 : null;
                }
                enumC23332a = enumC23332a3;
            } else {
                enumC23332a = null;
            }
            z = true;
        }
        return new C23785i(this, m6877w, abstractC23890n4, enumC23332a, z);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        boolean z;
        Object value = ((Map.Entry) obj).getValue();
        if (value == null) {
            z = this.f65891m;
        } else {
            if (this.f65890l != null) {
                AbstractC23890n<Object> abstractC23890n = this.f65887i;
                AbstractC23890n<Object> abstractC23890n2 = abstractC23890n;
                if (abstractC23890n == null) {
                    Class<?> cls = value.getClass();
                    abstractC23890n2 = this.f65889k.mo6060c(cls);
                    if (abstractC23890n2 == null) {
                        try {
                            AbstractC23788l abstractC23788l = this.f65889k;
                            AbstractC23462d abstractC23462d = this.f65881c;
                            Objects.requireNonNull(abstractC23788l);
                            abstractC23890n2 = abstractC23425a0.m6878v(cls, abstractC23462d);
                            AbstractC23788l mo6061b = abstractC23788l.mo6061b(cls, abstractC23890n2);
                            if (abstractC23788l != mo6061b) {
                                this.f65889k = mo6061b;
                            }
                        } catch (C23733k e) {
                        }
                    }
                }
                Object obj2 = this.f65890l;
                z = obj2 == AbstractC23331r.EnumC23332a.NON_EMPTY ? abstractC23890n2.mo5896d(abstractC23425a0, value) : obj2.equals(value);
            }
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Map.Entry<?, ?> entry = (Map.Entry) obj;
        abstractC23372g.mo5874O1(entry);
        m6069q(entry, abstractC23372g, abstractC23425a0);
        abstractC23372g.mo5840t0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        Map.Entry<?, ?> entry = (Map.Entry) obj;
        abstractC23372g.mo7191J(entry);
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(entry, EnumC23381m.START_OBJECT));
        m6069q(entry, abstractC23372g, abstractC23425a0);
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
    /* renamed from: p */
    public AbstractC23765h<?> mo6000p(AbstractC23712h abstractC23712h) {
        return new C23785i(this, this.f65886h, this.f65887i, this.f65890l, this.f65891m);
    }

    /* renamed from: q */
    public void m6069q(Map.Entry<?, ?> entry, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        AbstractC23890n<Object> abstractC23890n;
        AbstractC23712h abstractC23712h = this.f65888j;
        Object key = entry.getKey();
        AbstractC23890n<Object> abstractC23890n2 = key == null ? abstractC23425a0.f64999i : this.f65886h;
        Object value = entry.getValue();
        if (value != null) {
            AbstractC23890n<Object> abstractC23890n3 = this.f65887i;
            AbstractC23890n<Object> abstractC23890n4 = abstractC23890n3;
            if (abstractC23890n3 == null) {
                Class<?> cls = value.getClass();
                abstractC23890n4 = this.f65889k.mo6060c(cls);
                if (abstractC23890n4 == null) {
                    if (this.f65885g.mo5987s()) {
                        AbstractC23788l abstractC23788l = this.f65889k;
                        AbstractC23788l.C23792d m6062a = abstractC23788l.m6062a(abstractC23425a0.m6881s(this.f65885g, cls), abstractC23425a0, this.f65881c);
                        AbstractC23788l abstractC23788l2 = m6062a.f65906b;
                        if (abstractC23788l != abstractC23788l2) {
                            this.f65889k = abstractC23788l2;
                        }
                        abstractC23890n4 = m6062a.f65905a;
                    } else {
                        AbstractC23788l abstractC23788l3 = this.f65889k;
                        AbstractC23462d abstractC23462d = this.f65881c;
                        Objects.requireNonNull(abstractC23788l3);
                        abstractC23890n4 = abstractC23425a0.m6878v(cls, abstractC23462d);
                        AbstractC23788l mo6061b = abstractC23788l3.mo6061b(cls, abstractC23890n4);
                        if (abstractC23788l3 != mo6061b) {
                            this.f65889k = mo6061b;
                        }
                    }
                }
            }
            Object obj = this.f65890l;
            abstractC23890n = abstractC23890n4;
            if (obj != null) {
                if (obj == AbstractC23331r.EnumC23332a.NON_EMPTY && abstractC23890n4.mo5896d(abstractC23425a0, value)) {
                    return;
                }
                abstractC23890n = abstractC23890n4;
                if (this.f65890l.equals(value)) {
                    return;
                }
            }
        } else if (this.f65891m) {
            return;
        } else {
            abstractC23890n = abstractC23425a0.f64998h;
        }
        abstractC23890n2.mo5894f(key, abstractC23372g, abstractC23425a0);
        try {
            if (abstractC23712h == null) {
                abstractC23890n.mo5894f(value, abstractC23372g, abstractC23425a0);
            } else {
                abstractC23890n.mo5893g(value, abstractC23372g, abstractC23425a0, abstractC23712h);
            }
        } catch (Exception e) {
            m6011o(abstractC23425a0, e, entry, C22128a.m8551x2("", key));
            throw null;
        }
    }
}
