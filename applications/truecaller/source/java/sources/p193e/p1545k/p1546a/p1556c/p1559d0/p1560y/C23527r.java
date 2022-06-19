package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.lang.reflect.Method;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b;
/* renamed from: e.k.a.c.d0.y.r */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/r.class */
public final class C23527r extends AbstractC23488u {

    /* renamed from: o */
    public final C23664j f65281o;

    /* renamed from: p */
    public final transient Method f65282p;

    /* renamed from: q */
    public final boolean f65283q;

    public C23527r(C23527r c23527r, AbstractC23700j<?> abstractC23700j, AbstractC23484r abstractC23484r) {
        super(c23527r, abstractC23700j, abstractC23484r);
        this.f65281o = c23527r.f65281o;
        this.f65282p = c23527r.f65282p;
        this.f65283q = C23529t.m6693a(abstractC23484r);
    }

    public C23527r(C23527r c23527r, C23951v c23951v) {
        super(c23527r, c23951v);
        this.f65281o = c23527r.f65281o;
        this.f65282p = c23527r.f65282p;
        this.f65283q = c23527r.f65283q;
    }

    public C23527r(C23527r c23527r, Method method) {
        super(c23527r);
        this.f65281o = c23527r.f65281o;
        this.f65282p = method;
        this.f65283q = c23527r.f65283q;
    }

    public C23527r(AbstractC23681s abstractC23681s, AbstractC23698i abstractC23698i, AbstractC23709e abstractC23709e, AbstractC23896b abstractC23896b, C23664j c23664j) {
        super(abstractC23681s, abstractC23698i, abstractC23709e, abstractC23896b);
        this.f65281o = c23664j;
        this.f65282p = c23664j.f65619d;
        this.f65283q = C23529t.m6693a(this.f65177i);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: A */
    public Object mo6686A(Object obj, Object obj2) throws IOException {
        try {
            Object invoke = this.f65282p.invoke(obj, obj2);
            if (invoke != null) {
                obj = invoke;
            }
            return obj;
        } catch (Exception e) {
            m6763b(null, e, obj2);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: D */
    public AbstractC23488u mo6685D(C23951v c23951v) {
        return new C23527r(this, c23951v);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: E */
    public AbstractC23488u mo6684E(AbstractC23484r abstractC23484r) {
        return new C23527r(this, this.f65175g, abstractC23484r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [e.k.a.c.d0.r] */
    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: G */
    public AbstractC23488u mo6683G(AbstractC23700j<?> abstractC23700j) {
        AbstractC23700j<?> abstractC23700j2 = this.f65175g;
        if (abstractC23700j2 == abstractC23700j) {
            return this;
        }
        ?? r0 = this.f65177i;
        AbstractC23700j<?> abstractC23700j3 = r0;
        if (abstractC23700j2 == r0) {
            abstractC23700j3 = abstractC23700j;
        }
        return new C23527r(this, abstractC23700j, abstractC23700j3);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u, p193e.p1545k.p1546a.p1556c.AbstractC23462d
    /* renamed from: c */
    public AbstractC23663i mo6108c() {
        return this.f65281o;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: i */
    public void mo6682i(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        Object obj2;
        if (!abstractC23376j.mo7150O1(EnumC23381m.VALUE_NULL)) {
            AbstractC23709e abstractC23709e = this.f65176h;
            if (abstractC23709e == null) {
                Object mo6232d = this.f65175g.mo6232d(abstractC23376j, abstractC23632g);
                if (mo6232d != null) {
                    obj2 = mo6232d;
                } else if (this.f65283q) {
                    return;
                } else {
                    obj2 = this.f65177i.mo6233c(abstractC23632g);
                }
            } else {
                obj2 = this.f65175g.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
            }
        } else if (this.f65283q) {
            return;
        } else {
            obj2 = this.f65177i.mo6233c(abstractC23632g);
        }
        try {
            this.f65282p.invoke(obj, obj2);
        } catch (Exception e) {
            m6763b(abstractC23376j, e, obj2);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: j */
    public Object mo6681j(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        Object obj2;
        if (!abstractC23376j.mo7150O1(EnumC23381m.VALUE_NULL)) {
            AbstractC23709e abstractC23709e = this.f65176h;
            if (abstractC23709e == null) {
                Object mo6232d = this.f65175g.mo6232d(abstractC23376j, abstractC23632g);
                if (mo6232d != null) {
                    obj2 = mo6232d;
                } else if (this.f65283q) {
                    return obj;
                } else {
                    obj2 = this.f65177i.mo6233c(abstractC23632g);
                }
            } else {
                obj2 = this.f65175g.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
            }
        } else if (this.f65283q) {
            return obj;
        } else {
            obj2 = this.f65177i.mo6233c(abstractC23632g);
        }
        try {
            Object invoke = this.f65282p.invoke(obj, obj2);
            if (invoke != null) {
                obj = invoke;
            }
            return obj;
        } catch (Exception e) {
            m6763b(abstractC23376j, e, obj2);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: l */
    public void mo6688l(C23624f c23624f) {
        this.f65281o.m6386f(c23624f.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    public Object readResolve() {
        return new C23527r(this, this.f65281o.f65619d);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: z */
    public final void mo6680z(Object obj, Object obj2) throws IOException {
        try {
            this.f65282p.invoke(obj, obj2);
        } catch (Exception e) {
            m6763b(null, e, obj2);
            throw null;
        }
    }
}
