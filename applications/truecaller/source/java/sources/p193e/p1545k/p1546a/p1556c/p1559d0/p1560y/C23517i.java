package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.lang.reflect.Field;
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
import p193e.p1545k.p1546a.p1556c.p1564g0.C23657g;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.y.i */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/i.class */
public final class C23517i extends AbstractC23488u {

    /* renamed from: o */
    public final C23657g f65258o;

    /* renamed from: p */
    public final transient Field f65259p;

    /* renamed from: q */
    public final boolean f65260q;

    public C23517i(C23517i c23517i) {
        super(c23517i);
        C23657g c23657g = c23517i.f65258o;
        this.f65258o = c23657g;
        Field field = c23657g.f65601c;
        if (field != null) {
            this.f65259p = field;
            this.f65260q = c23517i.f65260q;
            return;
        }
        throw new IllegalArgumentException("Missing field (broken JDK (de)serialization?)");
    }

    public C23517i(C23517i c23517i, AbstractC23700j<?> abstractC23700j, AbstractC23484r abstractC23484r) {
        super(c23517i, abstractC23700j, abstractC23484r);
        this.f65258o = c23517i.f65258o;
        this.f65259p = c23517i.f65259p;
        this.f65260q = C23529t.m6693a(abstractC23484r);
    }

    public C23517i(C23517i c23517i, C23951v c23951v) {
        super(c23517i, c23951v);
        this.f65258o = c23517i.f65258o;
        this.f65259p = c23517i.f65259p;
        this.f65260q = c23517i.f65260q;
    }

    public C23517i(AbstractC23681s abstractC23681s, AbstractC23698i abstractC23698i, AbstractC23709e abstractC23709e, AbstractC23896b abstractC23896b, C23657g c23657g) {
        super(abstractC23681s, abstractC23698i, abstractC23709e, abstractC23896b);
        this.f65258o = c23657g;
        this.f65259p = c23657g.f65601c;
        this.f65260q = C23529t.m6693a(this.f65177i);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: A */
    public Object mo6686A(Object obj, Object obj2) throws IOException {
        try {
            this.f65259p.set(obj, obj2);
            return obj;
        } catch (Exception e) {
            m6763b(null, e, obj2);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: D */
    public AbstractC23488u mo6685D(C23951v c23951v) {
        return new C23517i(this, c23951v);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: E */
    public AbstractC23488u mo6684E(AbstractC23484r abstractC23484r) {
        return new C23517i(this, this.f65175g, abstractC23484r);
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
        return new C23517i(this, abstractC23700j, abstractC23700j3);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u, p193e.p1545k.p1546a.p1556c.AbstractC23462d
    /* renamed from: c */
    public AbstractC23663i mo6108c() {
        return this.f65258o;
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
                } else if (this.f65260q) {
                    return;
                } else {
                    obj2 = this.f65177i.mo6233c(abstractC23632g);
                }
            } else {
                obj2 = this.f65175g.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
            }
        } else if (this.f65260q) {
            return;
        } else {
            obj2 = this.f65177i.mo6233c(abstractC23632g);
        }
        try {
            this.f65259p.set(obj, obj2);
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
                } else if (this.f65260q) {
                    return obj;
                } else {
                    obj2 = this.f65177i.mo6233c(abstractC23632g);
                }
            } else {
                obj2 = this.f65175g.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
            }
        } else if (this.f65260q) {
            return obj;
        } else {
            obj2 = this.f65177i.mo6233c(abstractC23632g);
        }
        try {
            this.f65259p.set(obj, obj2);
            return obj;
        } catch (Exception e) {
            m6763b(abstractC23376j, e, obj2);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: l */
    public void mo6688l(C23624f c23624f) {
        C23914g.m5762e(this.f65259p, c23624f.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    public Object readResolve() {
        return new C23517i(this);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: z */
    public void mo6680z(Object obj, Object obj2) throws IOException {
        try {
            this.f65259p.set(obj, obj2);
        } catch (Exception e) {
            m6763b(null, e, obj2);
            throw null;
        }
    }
}
