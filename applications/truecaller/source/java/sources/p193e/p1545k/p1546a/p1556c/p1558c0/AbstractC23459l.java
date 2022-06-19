package p193e.p1545k.p1546a.p1556c.p1558c0;

import java.io.Serializable;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23299f;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1547a.AbstractC23326p;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1547a.AbstractC23334s;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23449e;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23450f;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23455i;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23459l;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23659g0;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23682t;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23638c;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23649d0;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23708d;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23937x;
/* renamed from: e.k.a.c.c0.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/c0/l.class */
public abstract class AbstractC23459l<CFG extends AbstractC23449e, T extends AbstractC23459l<CFG, T>> extends AbstractC23458k<T> implements Serializable {

    /* renamed from: j */
    public static final int f65072j = AbstractC23458k.m6866c(EnumC23942p.class);

    /* renamed from: k */
    public static final int f65073k = (((EnumC23942p.AUTO_DETECT_FIELDS.f66256b | EnumC23942p.AUTO_DETECT_GETTERS.f66256b) | EnumC23942p.AUTO_DETECT_IS_GETTERS.f66256b) | EnumC23942p.AUTO_DETECT_SETTERS.f66256b) | EnumC23942p.AUTO_DETECT_CREATORS.f66256b;

    /* renamed from: c */
    public final C23649d0 f65074c;

    /* renamed from: d */
    public final AbstractC23708d f65075d;

    /* renamed from: e */
    public final C23951v f65076e;

    /* renamed from: f */
    public final Class<?> f65077f;

    /* renamed from: g */
    public final AbstractC23455i f65078g;

    /* renamed from: h */
    public final C23937x f65079h;

    /* renamed from: i */
    public final C23452g f65080i;

    public AbstractC23459l(C23445a c23445a, AbstractC23708d abstractC23708d, C23649d0 c23649d0, C23937x c23937x, C23452g c23452g) {
        super(c23445a, f65072j);
        this.f65074c = c23649d0;
        this.f65075d = abstractC23708d;
        this.f65079h = c23937x;
        this.f65076e = null;
        this.f65077f = null;
        this.f65078g = AbstractC23455i.C23456a.f65061c;
        this.f65080i = c23452g;
    }

    public AbstractC23459l(AbstractC23459l<CFG, T> abstractC23459l, int i) {
        super(abstractC23459l, i);
        this.f65074c = abstractC23459l.f65074c;
        this.f65075d = abstractC23459l.f65075d;
        this.f65079h = abstractC23459l.f65079h;
        this.f65076e = abstractC23459l.f65076e;
        this.f65077f = abstractC23459l.f65077f;
        this.f65078g = abstractC23459l.f65078g;
        this.f65080i = abstractC23459l.f65080i;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23682t.AbstractC23683a
    /* renamed from: a */
    public final Class<?> mo6337a(Class<?> cls) {
        AbstractC23682t.AbstractC23683a abstractC23683a = this.f65074c.f65587a;
        return abstractC23683a == null ? null : abstractC23683a.mo6337a(cls);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k
    /* renamed from: f */
    public final AbstractC23450f mo6858f(Class<?> cls) {
        AbstractC23450f m6871a = this.f65080i.m6871a(cls);
        AbstractC23450f.C23451a c23451a = m6871a;
        if (m6871a == null) {
            c23451a = AbstractC23450f.C23451a.f65051a;
        }
        return c23451a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k
    /* renamed from: g */
    public final AbstractC23331r.C23333b mo6857g(Class<?> cls, Class<?> cls2) {
        this.f65080i.m6871a(cls2);
        AbstractC23331r.C23333b mo6855i = mo6855i(cls);
        if (mo6855i == null) {
            return null;
        }
        return mo6855i.m7270a(null);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k
    /* renamed from: h */
    public final AbstractC23311k.C23315d mo6856h(Class<?> cls) {
        Objects.requireNonNull(this.f65080i);
        return AbstractC23311k.C23315d.f64497h;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k
    /* renamed from: i */
    public final AbstractC23331r.C23333b mo6855i(Class<?> cls) {
        this.f65080i.m6871a(cls);
        AbstractC23331r.C23333b c23333b = this.f65080i.f65052a;
        if (c23333b == null) {
            return null;
        }
        return c23333b.m7270a(null);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k
    /* renamed from: k */
    public final AbstractC23659g0<?> mo6854k(Class<?> cls, C23638c c23638c) {
        AbstractC23299f.EnumC23300a enumC23300a = AbstractC23299f.EnumC23300a.NONE;
        AbstractC23659g0<?> abstractC23659g0 = this.f65080i.f65054c;
        int i = this.f65070a;
        int i2 = f65073k;
        AbstractC23659g0.C23660a c23660a = abstractC23659g0;
        if ((i & i2) != i2) {
            AbstractC23659g0.C23660a c23660a2 = abstractC23659g0;
            if (!m6859o(EnumC23942p.AUTO_DETECT_FIELDS)) {
                c23660a2 = ((AbstractC23659g0.C23660a) abstractC23659g0).m6393e(enumC23300a);
            }
            AbstractC23659g0.C23660a c23660a3 = c23660a2;
            if (!m6859o(EnumC23942p.AUTO_DETECT_GETTERS)) {
                c23660a3 = ((AbstractC23659g0.C23660a) c23660a2).m6392f(enumC23300a);
            }
            AbstractC23659g0.C23660a c23660a4 = c23660a3;
            if (!m6859o(EnumC23942p.AUTO_DETECT_IS_GETTERS)) {
                c23660a4 = ((AbstractC23659g0.C23660a) c23660a3).m6391g(enumC23300a);
            }
            AbstractC23659g0.C23660a c23660a5 = c23660a4;
            if (!m6859o(EnumC23942p.AUTO_DETECT_SETTERS)) {
                c23660a5 = ((AbstractC23659g0.C23660a) c23660a4).m6390h(enumC23300a);
            }
            c23660a = c23660a5;
            if (!m6859o(EnumC23942p.AUTO_DETECT_CREATORS)) {
                c23660a = ((AbstractC23659g0.C23660a) c23660a5).m6394d(enumC23300a);
            }
        }
        AbstractC23426b m6864e = m6864e();
        AbstractC23659g0<?> abstractC23659g02 = c23660a;
        if (m6864e != null) {
            abstractC23659g02 = m6864e.mo6294b(c23638c, c23660a);
        }
        AbstractC23659g0.C23660a c23660a6 = abstractC23659g02;
        if (this.f65080i.m6871a(cls) != null) {
            c23660a6 = (AbstractC23659g0.C23660a) abstractC23659g02;
            Objects.requireNonNull(c23660a6);
        }
        return c23660a6;
    }

    /* renamed from: p */
    public abstract T mo5653p(int i);

    /* renamed from: q */
    public C23951v m6853q(AbstractC23698i abstractC23698i) {
        C23951v c23951v = this.f65076e;
        if (c23951v != null) {
            return c23951v;
        }
        C23937x c23937x = this.f65079h;
        Objects.requireNonNull(c23937x);
        return c23937x.m5713a(abstractC23698i.f65728a, this);
    }

    /* renamed from: r */
    public final AbstractC23326p.C23327a m6852r(Class<?> cls, C23638c c23638c) {
        AbstractC23426b m6864e = m6864e();
        AbstractC23326p.C23327a mo6315H = m6864e == null ? null : m6864e.mo6315H(this, c23638c);
        this.f65080i.m6871a(cls);
        AbstractC23326p.C23327a c23327a = AbstractC23326p.C23327a.f64514f;
        return mo6315H == null ? null : mo6315H;
    }

    /* renamed from: s */
    public final AbstractC23334s.C23335a m6851s(C23638c c23638c) {
        AbstractC23426b m6864e = m6864e();
        return m6864e == null ? null : m6864e.mo6312K(this, c23638c);
    }

    /* renamed from: t */
    public final T m6850t(EnumC23942p... enumC23942pArr) {
        int i = this.f65070a;
        for (EnumC23942p enumC23942p : enumC23942pArr) {
            i &= enumC23942p.f66256b ^ (-1);
        }
        return i == this.f65070a ? this : mo5653p(i);
    }
}
