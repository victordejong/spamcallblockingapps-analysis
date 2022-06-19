package p193e.p1545k.p1546a.p1556c.p1570l0;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.p1552w.C23403i;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23949u;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23657g;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/c.class */
public class C23760c extends AbstractC23771m implements Serializable {

    /* renamed from: t */
    public static final /* synthetic */ int f65835t = 0;

    /* renamed from: c */
    public final C23403i f65836c;

    /* renamed from: d */
    public final C23951v f65837d;

    /* renamed from: e */
    public final AbstractC23698i f65838e;

    /* renamed from: f */
    public final AbstractC23698i f65839f;

    /* renamed from: g */
    public AbstractC23698i f65840g;

    /* renamed from: h */
    public final transient AbstractC23896b f65841h;

    /* renamed from: i */
    public final AbstractC23663i f65842i;

    /* renamed from: j */
    public transient Method f65843j;

    /* renamed from: k */
    public transient Field f65844k;

    /* renamed from: l */
    public AbstractC23890n<Object> f65845l;

    /* renamed from: m */
    public AbstractC23890n<Object> f65846m;

    /* renamed from: n */
    public AbstractC23712h f65847n;

    /* renamed from: o */
    public transient AbstractC23788l f65848o;

    /* renamed from: p */
    public final boolean f65849p;

    /* renamed from: q */
    public final Object f65850q;

    /* renamed from: r */
    public final Class<?>[] f65851r;

    /* renamed from: s */
    public transient HashMap<Object, Object> f65852s;

    public C23760c() {
        super(C23949u.f66292j);
        this.f65842i = null;
        this.f65841h = null;
        this.f65836c = null;
        this.f65837d = null;
        this.f65851r = null;
        this.f65838e = null;
        this.f65845l = null;
        this.f65848o = null;
        this.f65847n = null;
        this.f65839f = null;
        this.f65843j = null;
        this.f65844k = null;
        this.f65849p = false;
        this.f65850q = null;
        this.f65846m = null;
    }

    public C23760c(AbstractC23681s abstractC23681s, AbstractC23663i abstractC23663i, AbstractC23896b abstractC23896b, AbstractC23698i abstractC23698i, AbstractC23890n<?> abstractC23890n, AbstractC23712h abstractC23712h, AbstractC23698i abstractC23698i2, boolean z, Object obj, Class<?>[] clsArr) {
        super(abstractC23681s);
        this.f65842i = abstractC23663i;
        this.f65841h = abstractC23896b;
        this.f65836c = new C23403i(abstractC23681s.getName());
        this.f65837d = abstractC23681s.mo5698w();
        this.f65838e = abstractC23698i;
        this.f65845l = abstractC23890n;
        this.f65848o = abstractC23890n == null ? AbstractC23788l.C23790b.f65903b : null;
        this.f65847n = abstractC23712h;
        this.f65839f = abstractC23698i2;
        if (abstractC23663i instanceof C23657g) {
            this.f65843j = null;
            this.f65844k = (Field) abstractC23663i.mo6375i();
        } else if (abstractC23663i instanceof C23664j) {
            this.f65843j = (Method) abstractC23663i.mo6375i();
            this.f65844k = null;
        } else {
            this.f65843j = null;
            this.f65844k = null;
        }
        this.f65849p = z;
        this.f65850q = obj;
        this.f65846m = null;
        this.f65851r = clsArr;
    }

    public C23760c(C23760c c23760c, C23403i c23403i) {
        super(c23760c);
        this.f65836c = c23403i;
        this.f65837d = c23760c.f65837d;
        this.f65842i = c23760c.f65842i;
        this.f65841h = c23760c.f65841h;
        this.f65838e = c23760c.f65838e;
        this.f65843j = c23760c.f65843j;
        this.f65844k = c23760c.f65844k;
        this.f65845l = c23760c.f65845l;
        this.f65846m = c23760c.f65846m;
        if (c23760c.f65852s != null) {
            this.f65852s = new HashMap<>(c23760c.f65852s);
        }
        this.f65839f = c23760c.f65839f;
        this.f65848o = c23760c.f65848o;
        this.f65849p = c23760c.f65849p;
        this.f65850q = c23760c.f65850q;
        this.f65851r = c23760c.f65851r;
        this.f65847n = c23760c.f65847n;
        this.f65840g = c23760c.f65840g;
    }

    public C23760c(C23760c c23760c, C23951v c23951v) {
        super(c23760c);
        this.f65836c = new C23403i(c23951v.f66304a);
        this.f65837d = c23760c.f65837d;
        this.f65841h = c23760c.f65841h;
        this.f65838e = c23760c.f65838e;
        this.f65842i = c23760c.f65842i;
        this.f65843j = c23760c.f65843j;
        this.f65844k = c23760c.f65844k;
        this.f65845l = c23760c.f65845l;
        this.f65846m = c23760c.f65846m;
        if (c23760c.f65852s != null) {
            this.f65852s = new HashMap<>(c23760c.f65852s);
        }
        this.f65839f = c23760c.f65839f;
        this.f65848o = c23760c.f65848o;
        this.f65849p = c23760c.f65849p;
        this.f65850q = c23760c.f65850q;
        this.f65851r = c23760c.f65851r;
        this.f65847n = c23760c.f65847n;
        this.f65840g = c23760c.f65840g;
    }

    /* renamed from: b */
    public AbstractC23890n<Object> mo6054b(AbstractC23788l abstractC23788l, Class<?> cls, AbstractC23425a0 abstractC23425a0) throws C23733k {
        AbstractC23788l.C23792d c23792d;
        AbstractC23698i abstractC23698i = this.f65840g;
        if (abstractC23698i != null) {
            AbstractC23698i m6881s = abstractC23425a0.m6881s(abstractC23698i, cls);
            AbstractC23890n<Object> m6876y = abstractC23425a0.m6876y(m6881s, this);
            c23792d = new AbstractC23788l.C23792d(m6876y, abstractC23788l.mo6061b(m6881s.f65728a, m6876y));
        } else {
            AbstractC23890n<Object> m6875z = abstractC23425a0.m6875z(cls, this);
            c23792d = new AbstractC23788l.C23792d(m6875z, abstractC23788l.mo6061b(cls, m6875z));
        }
        AbstractC23788l abstractC23788l2 = c23792d.f65906b;
        if (abstractC23788l != abstractC23788l2) {
            this.f65848o = abstractC23788l2;
        }
        return c23792d.f65905a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
    /* renamed from: c */
    public AbstractC23663i mo6108c() {
        return this.f65842i;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
    /* renamed from: d */
    public C23951v mo6107d() {
        return new C23951v(this.f65836c.f64805a);
    }

    /* renamed from: g */
    public boolean m6106g(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23890n abstractC23890n) throws IOException {
        if (!abstractC23890n.mo5891i()) {
            if (abstractC23425a0.m6889M(EnumC23958z.FAIL_ON_SELF_REFERENCES)) {
                if (!(abstractC23890n instanceof AbstractC23811d)) {
                    return false;
                }
                abstractC23425a0.mo6466m(this.f65838e, "Direct self-reference leading to cycle");
                throw null;
            } else if (!abstractC23425a0.m6889M(EnumC23958z.WRITE_SELF_REFERENCES_AS_NULL)) {
                return false;
            } else {
                if (this.f65846m == null) {
                    return true;
                }
                if (!abstractC23372g.mo5843s().m7197d()) {
                    abstractC23372g.mo5833z0(this.f65836c);
                }
                this.f65846m.mo5894f(null, abstractC23372g, abstractC23425a0);
                return true;
            }
        }
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d, p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23932t
    public String getName() {
        return this.f65836c.f64805a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
    public AbstractC23698i getType() {
        return this.f65838e;
    }

    /* renamed from: h */
    public void mo6074h(AbstractC23890n<Object> abstractC23890n) {
        AbstractC23890n<Object> abstractC23890n2 = this.f65846m;
        if (abstractC23890n2 == null || abstractC23890n2 == abstractC23890n) {
            this.f65846m = abstractC23890n;
            return;
        }
        throw new IllegalStateException(String.format("Cannot override _nullSerializer: had a %s, trying to set to %s", C23914g.m5761f(this.f65846m), C23914g.m5761f(abstractC23890n)));
    }

    /* renamed from: i */
    public void mo6053i(AbstractC23890n<Object> abstractC23890n) {
        AbstractC23890n<Object> abstractC23890n2 = this.f65845l;
        if (abstractC23890n2 == null || abstractC23890n2 == abstractC23890n) {
            this.f65845l = abstractC23890n;
            return;
        }
        throw new IllegalStateException(String.format("Cannot override _serializer: had a %s, trying to set to %s", C23914g.m5761f(this.f65845l), C23914g.m5761f(abstractC23890n)));
    }

    /* renamed from: j */
    public C23760c mo6052j(AbstractC23929s abstractC23929s) {
        String mo5728a = abstractC23929s.mo5728a(this.f65836c.f64805a);
        return mo5728a.equals(this.f65836c.toString()) ? this : new C23760c(this, C23951v.m5665a(mo5728a));
    }

    /* renamed from: k */
    public void mo6073k(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws Exception {
        Method method = this.f65843j;
        Object invoke = method == null ? this.f65844k.get(obj) : method.invoke(obj, null);
        if (invoke == null) {
            AbstractC23890n<Object> abstractC23890n = this.f65846m;
            if (abstractC23890n != null) {
                abstractC23890n.mo5894f(null, abstractC23372g, abstractC23425a0);
                return;
            } else {
                abstractC23372g.mo5888D0();
                return;
            }
        }
        AbstractC23890n<Object> abstractC23890n2 = this.f65845l;
        AbstractC23890n<Object> abstractC23890n3 = abstractC23890n2;
        if (abstractC23890n2 == null) {
            Class<?> cls = invoke.getClass();
            AbstractC23788l abstractC23788l = this.f65848o;
            abstractC23890n3 = abstractC23788l.mo6060c(cls);
            if (abstractC23890n3 == null) {
                abstractC23890n3 = mo6054b(abstractC23788l, cls, abstractC23425a0);
            }
        }
        Object obj2 = this.f65850q;
        if (obj2 != null) {
            if (AbstractC23331r.EnumC23332a.NON_EMPTY == obj2) {
                if (abstractC23890n3.mo5896d(abstractC23425a0, invoke)) {
                    m6104n(abstractC23372g, abstractC23425a0);
                    return;
                }
            } else if (obj2.equals(invoke)) {
                m6104n(abstractC23372g, abstractC23425a0);
                return;
            }
        }
        if (invoke == obj && m6106g(abstractC23372g, abstractC23425a0, abstractC23890n3)) {
            return;
        }
        AbstractC23712h abstractC23712h = this.f65847n;
        if (abstractC23712h == null) {
            abstractC23890n3.mo5894f(invoke, abstractC23372g, abstractC23425a0);
        } else {
            abstractC23890n3.mo5893g(invoke, abstractC23372g, abstractC23425a0, abstractC23712h);
        }
    }

    /* renamed from: l */
    public void mo6051l(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws Exception {
        Method method = this.f65843j;
        Object invoke = method == null ? this.f65844k.get(obj) : method.invoke(obj, null);
        if (invoke == null) {
            if (this.f65846m == null) {
                return;
            }
            abstractC23372g.mo5833z0(this.f65836c);
            this.f65846m.mo5894f(null, abstractC23372g, abstractC23425a0);
            return;
        }
        AbstractC23890n<Object> abstractC23890n = this.f65845l;
        AbstractC23890n<Object> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n == null) {
            Class<?> cls = invoke.getClass();
            AbstractC23788l abstractC23788l = this.f65848o;
            abstractC23890n2 = abstractC23788l.mo6060c(cls);
            if (abstractC23890n2 == null) {
                abstractC23890n2 = mo6054b(abstractC23788l, cls, abstractC23425a0);
            }
        }
        Object obj2 = this.f65850q;
        if (obj2 != null) {
            if (AbstractC23331r.EnumC23332a.NON_EMPTY == obj2) {
                if (abstractC23890n2.mo5896d(abstractC23425a0, invoke)) {
                    return;
                }
            } else if (obj2.equals(invoke)) {
                return;
            }
        }
        if (invoke == obj && m6106g(abstractC23372g, abstractC23425a0, abstractC23890n2)) {
            return;
        }
        abstractC23372g.mo5833z0(this.f65836c);
        AbstractC23712h abstractC23712h = this.f65847n;
        if (abstractC23712h == null) {
            abstractC23890n2.mo5894f(invoke, abstractC23372g, abstractC23425a0);
        } else {
            abstractC23890n2.mo5893g(invoke, abstractC23372g, abstractC23425a0, abstractC23712h);
        }
    }

    /* renamed from: m */
    public void m6105m(AbstractC23372g abstractC23372g) throws Exception {
        Objects.requireNonNull(abstractC23372g);
    }

    /* renamed from: n */
    public void m6104n(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws Exception {
        AbstractC23890n<Object> abstractC23890n = this.f65846m;
        if (abstractC23890n != null) {
            abstractC23890n.mo5894f(null, abstractC23372g, abstractC23425a0);
        } else {
            abstractC23372g.mo5888D0();
        }
    }

    public Object readResolve() {
        AbstractC23663i abstractC23663i = this.f65842i;
        if (abstractC23663i instanceof C23657g) {
            this.f65843j = null;
            this.f65844k = (Field) abstractC23663i.mo6375i();
        } else if (abstractC23663i instanceof C23664j) {
            this.f65843j = (Method) abstractC23663i.mo6375i();
            this.f65844k = null;
        }
        if (this.f65845l == null) {
            this.f65848o = AbstractC23788l.C23790b.f65903b;
        }
        return this;
    }

    public String toString() {
        StringBuilder m8554x = C22128a.m8554x(40, "property '");
        m8554x.append(this.f65836c.f64805a);
        m8554x.append("' (");
        if (this.f65843j != null) {
            m8554x.append("via method ");
            m8554x.append(this.f65843j.getDeclaringClass().getName());
            m8554x.append(StringConstant.HASH);
            m8554x.append(this.f65843j.getName());
        } else if (this.f65844k != null) {
            m8554x.append("field \"");
            m8554x.append(this.f65844k.getDeclaringClass().getName());
            m8554x.append(StringConstant.HASH);
            m8554x.append(this.f65844k.getName());
        } else {
            m8554x.append("virtual");
        }
        if (this.f65845l == null) {
            m8554x.append(", no static serializer");
        } else {
            StringBuilder m8728C = C22128a.m8728C(", static serializer of type ");
            m8728C.append(this.f65845l.getClass().getName());
            m8554x.append(m8728C.toString());
        }
        m8554x.append(')');
        return m8554x.toString();
    }
}
