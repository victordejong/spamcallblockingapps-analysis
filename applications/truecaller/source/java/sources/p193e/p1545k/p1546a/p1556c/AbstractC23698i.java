package p193e.p1545k.p1546a.p1556c;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.List;
import p193e.p1545k.p1546a.p1548b.p1555z.AbstractC23421a;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23884n;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.i */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/i.class */
public abstract class AbstractC23698i extends AbstractC23421a implements Serializable, Type {

    /* renamed from: a */
    public final Class<?> f65728a;

    /* renamed from: b */
    public final int f65729b;

    /* renamed from: c */
    public final Object f65730c;

    /* renamed from: d */
    public final Object f65731d;

    /* renamed from: e */
    public final boolean f65732e;

    public AbstractC23698i(Class<?> cls, int i, Object obj, Object obj2, boolean z) {
        this.f65728a = cls;
        this.f65729b = cls.getName().hashCode() + i;
        this.f65730c = obj;
        this.f65731d = obj2;
        this.f65732e = z;
    }

    /* renamed from: A */
    public final boolean m6244A() {
        return C23914g.m5744w(this.f65728a) && this.f65728a != Enum.class;
    }

    /* renamed from: B */
    public final boolean m6243B() {
        return C23914g.m5744w(this.f65728a);
    }

    /* renamed from: C */
    public final boolean m6242C() {
        return Modifier.isFinal(this.f65728a.getModifiers());
    }

    /* renamed from: D */
    public final boolean m6241D() {
        return this.f65728a.isInterface();
    }

    /* renamed from: E */
    public final boolean m6240E() {
        return this.f65728a == Object.class;
    }

    /* renamed from: F */
    public boolean mo5972F() {
        return false;
    }

    /* renamed from: G */
    public final boolean m6239G() {
        return this.f65728a.isPrimitive();
    }

    /* renamed from: H */
    public final boolean m6238H() {
        Class<?> cls = this.f65728a;
        Annotation[] annotationArr = C23914g.f66156a;
        Class<? super Object> superclass = cls.getSuperclass();
        return superclass != null && "java.lang.Record".equals(superclass.getName());
    }

    /* renamed from: I */
    public final boolean m6237I(Class<?> cls) {
        Class<?> cls2 = this.f65728a;
        return cls2 == cls || cls.isAssignableFrom(cls2);
    }

    /* renamed from: J */
    public final boolean m6236J(Class<?> cls) {
        Class<?> cls2 = this.f65728a;
        return cls2 == cls || cls2.isAssignableFrom(cls);
    }

    /* renamed from: K */
    public abstract AbstractC23698i mo5946K(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr);

    /* renamed from: L */
    public abstract AbstractC23698i mo5945L(AbstractC23698i abstractC23698i);

    /* renamed from: M */
    public abstract AbstractC23698i mo5944M(Object obj);

    /* renamed from: N */
    public abstract AbstractC23698i mo5943N(Object obj);

    /* renamed from: O */
    public AbstractC23698i mo5971O(AbstractC23698i abstractC23698i) {
        Object obj = abstractC23698i.f65731d;
        AbstractC23698i mo5941Q = obj != this.f65731d ? mo5941Q(obj) : this;
        Object obj2 = abstractC23698i.f65730c;
        AbstractC23698i abstractC23698i2 = mo5941Q;
        if (obj2 != this.f65730c) {
            abstractC23698i2 = mo5941Q.mo5940R(obj2);
        }
        return abstractC23698i2;
    }

    /* renamed from: P */
    public abstract AbstractC23698i mo5942P();

    /* renamed from: Q */
    public abstract AbstractC23698i mo5941Q(Object obj);

    /* renamed from: R */
    public abstract AbstractC23698i mo5940R(Object obj);

    public abstract boolean equals(Object obj);

    /* renamed from: f */
    public abstract AbstractC23698i mo5927f(int i);

    /* renamed from: g */
    public abstract int mo5926g();

    /* renamed from: h */
    public AbstractC23698i m6235h(int i) {
        AbstractC23698i mo5927f = mo5927f(i);
        AbstractC23698i abstractC23698i = mo5927f;
        if (mo5927f == null) {
            abstractC23698i = C23887o.m5900p();
        }
        return abstractC23698i;
    }

    public final int hashCode() {
        return this.f65729b;
    }

    /* renamed from: i */
    public abstract AbstractC23698i mo5925i(Class<?> cls);

    /* renamed from: j */
    public abstract C23884n mo5924j();

    /* renamed from: k */
    public AbstractC23698i mo5948k() {
        return null;
    }

    /* renamed from: l */
    public abstract StringBuilder mo5934l(StringBuilder sb);

    /* renamed from: m */
    public abstract StringBuilder mo5933m(StringBuilder sb);

    /* renamed from: n */
    public abstract List<AbstractC23698i> mo5923n();

    /* renamed from: o */
    public AbstractC23698i mo5970o() {
        return null;
    }

    /* renamed from: p */
    public AbstractC23698i mo5953a() {
        return null;
    }

    /* renamed from: q */
    public abstract AbstractC23698i mo5922q();

    /* renamed from: r */
    public boolean mo5932r() {
        return true;
    }

    /* renamed from: s */
    public boolean mo5987s() {
        return mo5926g() > 0;
    }

    /* renamed from: t */
    public boolean mo5969t() {
        return (this.f65731d == null && this.f65730c == null) ? false : true;
    }

    public abstract String toString();

    /* renamed from: u */
    public final boolean m6234u(Class<?> cls) {
        return this.f65728a == cls;
    }

    /* renamed from: v */
    public boolean mo5986v() {
        return Modifier.isAbstract(this.f65728a.getModifiers());
    }

    /* renamed from: w */
    public boolean mo5985w() {
        return false;
    }

    /* renamed from: x */
    public boolean mo5983x() {
        return false;
    }

    /* renamed from: y */
    public boolean mo5984y() {
        if ((this.f65728a.getModifiers() & 1536) == 0) {
            return true;
        }
        return this.f65728a.isPrimitive();
    }

    /* renamed from: z */
    public abstract boolean mo5931z();
}
