package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23459l;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23682t;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23884n;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/d.class */
public class C23648d {

    /* renamed from: i */
    public static final Class<?> f65577i = List.class;

    /* renamed from: j */
    public static final Class<?> f65578j = Map.class;

    /* renamed from: a */
    public final AbstractC23458k<?> f65579a;

    /* renamed from: b */
    public final AbstractC23426b f65580b;

    /* renamed from: c */
    public final AbstractC23682t.AbstractC23683a f65581c;

    /* renamed from: d */
    public final C23884n f65582d;

    /* renamed from: e */
    public final AbstractC23698i f65583e;

    /* renamed from: f */
    public final Class<?> f65584f;

    /* renamed from: g */
    public final Class<?> f65585g;

    /* renamed from: h */
    public final boolean f65586h;

    public C23648d(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i, AbstractC23682t.AbstractC23683a abstractC23683a) {
        this.f65579a = abstractC23458k;
        this.f65583e = abstractC23698i;
        Class<?> cls = abstractC23698i.f65728a;
        this.f65584f = cls;
        this.f65581c = abstractC23683a;
        this.f65582d = abstractC23698i.mo5924j();
        AbstractC23426b m6864e = abstractC23458k.m6860n() ? abstractC23458k.m6864e() : null;
        this.f65580b = m6864e;
        this.f65585g = abstractC23683a == null ? null : abstractC23683a.mo6337a(cls);
        this.f65586h = m6864e != null && (!C23914g.m5743x(cls) || !abstractC23698i.mo5931z());
    }

    public C23648d(AbstractC23458k<?> abstractC23458k, Class<?> cls, AbstractC23682t.AbstractC23683a abstractC23683a) {
        this.f65579a = abstractC23458k;
        this.f65583e = null;
        this.f65584f = cls;
        this.f65581c = abstractC23683a;
        this.f65582d = C23884n.f66055g;
        if (abstractC23458k == null) {
            this.f65580b = null;
            this.f65585g = null;
        } else {
            this.f65580b = abstractC23458k.m6860n() ? abstractC23458k.m6864e() : null;
            this.f65585g = abstractC23683a == null ? null : abstractC23683a.mo6337a(cls);
        }
        this.f65586h = this.f65580b != null;
    }

    /* renamed from: d */
    public static void m6410d(AbstractC23698i abstractC23698i, List<AbstractC23698i> list, boolean z) {
        Class<?> cls = abstractC23698i.f65728a;
        if (z) {
            if (m6408f(list, cls)) {
                return;
            }
            list.add(abstractC23698i);
            if (cls == f65577i || cls == f65578j) {
                return;
            }
        }
        for (AbstractC23698i abstractC23698i2 : abstractC23698i.mo5923n()) {
            m6410d(abstractC23698i2, list, true);
        }
    }

    /* renamed from: e */
    public static void m6409e(AbstractC23698i abstractC23698i, List<AbstractC23698i> list, boolean z) {
        Class<?> cls = abstractC23698i.f65728a;
        if (cls == Object.class || cls == Enum.class) {
            return;
        }
        if (z) {
            if (m6408f(list, cls)) {
                return;
            }
            list.add(abstractC23698i);
        }
        for (AbstractC23698i abstractC23698i2 : abstractC23698i.mo5923n()) {
            m6410d(abstractC23698i2, list, true);
        }
        AbstractC23698i mo5922q = abstractC23698i.mo5922q();
        if (mo5922q == null) {
            return;
        }
        m6409e(mo5922q, list, true);
    }

    /* renamed from: f */
    public static boolean m6408f(List<AbstractC23698i> list, Class<?> cls) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i).f65728a == cls) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    public static C23638c m6406h(AbstractC23458k<?> abstractC23458k, Class<?> cls) {
        C23638c c23638c;
        if (cls.isArray()) {
            if (abstractC23458k == null || ((AbstractC23459l) abstractC23458k).mo6337a(cls) == null) {
                c23638c = new C23638c(cls);
                return c23638c;
            }
        }
        C23648d c23648d = new C23648d(abstractC23458k, cls, abstractC23458k);
        List<AbstractC23698i> emptyList = Collections.emptyList();
        c23638c = new C23638c(null, c23648d.f65584f, emptyList, c23648d.f65585g, c23648d.m6407g(emptyList), c23648d.f65582d, c23648d.f65580b, c23648d.f65581c, c23648d.f65579a.f65071b.f65022a, c23648d.f65586h);
        return c23638c;
    }

    /* renamed from: a */
    public final AbstractC23671o m6413a(AbstractC23671o abstractC23671o, Annotation[] annotationArr) {
        AbstractC23671o abstractC23671o2 = abstractC23671o;
        if (annotationArr != null) {
            int length = annotationArr.length;
            int i = 0;
            while (true) {
                abstractC23671o2 = abstractC23671o;
                if (i >= length) {
                    break;
                }
                Annotation annotation = annotationArr[i];
                AbstractC23671o abstractC23671o3 = abstractC23671o;
                if (!abstractC23671o.mo6362d(annotation)) {
                    AbstractC23671o mo6365a = abstractC23671o.mo6365a(annotation);
                    abstractC23671o3 = mo6365a;
                    if (this.f65580b.mo6270n0(annotation)) {
                        abstractC23671o3 = m6411c(mo6365a, annotation);
                    }
                }
                i++;
                abstractC23671o = abstractC23671o3;
            }
        }
        return abstractC23671o2;
    }

    /* renamed from: b */
    public final AbstractC23671o m6412b(AbstractC23671o abstractC23671o, Class<?> cls, Class<?> cls2) {
        AbstractC23671o abstractC23671o2 = abstractC23671o;
        if (cls2 != null) {
            AbstractC23671o m6413a = m6413a(abstractC23671o, C23914g.m5756k(cls2));
            Iterator it = ((ArrayList) C23914g.m5754m(cls2, cls, false)).iterator();
            while (true) {
                abstractC23671o2 = m6413a;
                if (!it.hasNext()) {
                    break;
                }
                m6413a = m6413a(m6413a, C23914g.m5756k((Class) it.next()));
            }
        }
        return abstractC23671o2;
    }

    /* renamed from: c */
    public final AbstractC23671o m6411c(AbstractC23671o abstractC23671o, Annotation annotation) {
        Annotation[] m5756k = C23914g.m5756k(annotation.annotationType());
        int length = m5756k.length;
        int i = 0;
        while (true) {
            AbstractC23671o abstractC23671o2 = abstractC23671o;
            if (i < length) {
                Annotation annotation2 = m5756k[i];
                abstractC23671o = abstractC23671o2;
                if (!(annotation2 instanceof Target)) {
                    if (annotation2 instanceof Retention) {
                        abstractC23671o = abstractC23671o2;
                    } else {
                        abstractC23671o = abstractC23671o2;
                        if (!abstractC23671o2.mo6362d(annotation2)) {
                            AbstractC23671o mo6365a = abstractC23671o2.mo6365a(annotation2);
                            abstractC23671o = mo6365a;
                            if (this.f65580b.mo6270n0(annotation2)) {
                                abstractC23671o = m6411c(mo6365a, annotation2);
                            }
                        }
                    }
                }
                i++;
            } else {
                return abstractC23671o2;
            }
        }
    }

    /* renamed from: g */
    public final AbstractC23896b m6407g(List<AbstractC23698i> list) {
        AbstractC23896b abstractC23896b = AbstractC23671o.f65635b;
        if (this.f65580b == null) {
            return abstractC23896b;
        }
        AbstractC23682t.AbstractC23683a abstractC23683a = this.f65581c;
        boolean z = abstractC23683a != null && (!(abstractC23683a instanceof C23649d0) || ((C23649d0) abstractC23683a).m6405b());
        if (!z && !this.f65586h) {
            return abstractC23896b;
        }
        AbstractC23671o.C23672a c23672a = AbstractC23671o.C23672a.f65637c;
        Class<?> cls = this.f65585g;
        AbstractC23671o.C23672a c23672a2 = c23672a;
        if (cls != null) {
            c23672a2 = m6412b(c23672a, this.f65584f, cls);
        }
        AbstractC23671o abstractC23671o = c23672a2;
        if (this.f65586h) {
            abstractC23671o = m6413a(c23672a2, C23914g.m5756k(this.f65584f));
        }
        AbstractC23671o abstractC23671o2 = abstractC23671o;
        for (AbstractC23698i abstractC23698i : list) {
            AbstractC23671o abstractC23671o3 = abstractC23671o2;
            if (z) {
                Class<?> cls2 = abstractC23698i.f65728a;
                abstractC23671o3 = m6412b(abstractC23671o2, cls2, this.f65581c.mo6337a(cls2));
            }
            abstractC23671o2 = abstractC23671o3;
            if (this.f65586h) {
                abstractC23671o2 = m6413a(abstractC23671o3, C23914g.m5756k(abstractC23698i.f65728a));
            }
        }
        AbstractC23671o abstractC23671o4 = abstractC23671o2;
        if (z) {
            abstractC23671o4 = m6412b(abstractC23671o2, Object.class, this.f65581c.mo6337a(Object.class));
        }
        return abstractC23671o4.mo6363c();
    }
}
