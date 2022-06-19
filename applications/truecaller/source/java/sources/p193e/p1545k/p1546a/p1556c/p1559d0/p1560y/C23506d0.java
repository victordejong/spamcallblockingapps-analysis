package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.lang.reflect.Method;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.y.d0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/d0.class */
public final class C23506d0 extends AbstractC23488u {

    /* renamed from: o */
    public final C23664j f65227o;

    /* renamed from: p */
    public final Method f65228p;

    public C23506d0(C23506d0 c23506d0, AbstractC23700j<?> abstractC23700j, AbstractC23484r abstractC23484r) {
        super(c23506d0, abstractC23700j, abstractC23484r);
        this.f65227o = c23506d0.f65227o;
        this.f65228p = c23506d0.f65228p;
    }

    public C23506d0(C23506d0 c23506d0, C23951v c23951v) {
        super(c23506d0, c23951v);
        this.f65227o = c23506d0.f65227o;
        this.f65228p = c23506d0.f65228p;
    }

    public C23506d0(AbstractC23681s abstractC23681s, AbstractC23698i abstractC23698i, AbstractC23709e abstractC23709e, AbstractC23896b abstractC23896b, C23664j c23664j) {
        super(abstractC23681s, abstractC23698i, abstractC23709e, abstractC23896b);
        this.f65227o = c23664j;
        this.f65228p = c23664j.f65619d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: A */
    public Object mo6686A(Object obj, Object obj2) throws IOException {
        mo6680z(obj, obj2);
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: D */
    public AbstractC23488u mo6685D(C23951v c23951v) {
        return new C23506d0(this, c23951v);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: E */
    public AbstractC23488u mo6684E(AbstractC23484r abstractC23484r) {
        return new C23506d0(this, this.f65175g, abstractC23484r);
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
        return new C23506d0(this, abstractC23700j, abstractC23700j3);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u, p193e.p1545k.p1546a.p1556c.AbstractC23462d
    /* renamed from: c */
    public AbstractC23663i mo6108c() {
        return this.f65227o;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: i */
    public final void mo6682i(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_NULL)) {
            return;
        }
        if (this.f65176h != null) {
            abstractC23632g.mo6466m(this.f65172d, String.format("Problem deserializing 'setterless' property (\"%s\"): no way to handle typed deser with setterless yet", this.f65171c.f66304a));
            throw null;
        }
        try {
            Object invoke = this.f65228p.invoke(obj, null);
            if (invoke != null) {
                this.f65175g.mo6231e(abstractC23376j, abstractC23632g, invoke);
            } else {
                abstractC23632g.mo6466m(this.f65172d, String.format("Problem deserializing 'setterless' property '%s': get method returned null", this.f65171c.f66304a));
                throw null;
            }
        } catch (Exception e) {
            C23914g.m5771J(e);
            C23914g.m5770K(e);
            Throwable m5748s = C23914g.m5748s(e);
            throw new C23733k(abstractC23376j, C23914g.m5757j(m5748s), m5748s);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: j */
    public Object mo6681j(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        mo6682i(abstractC23376j, abstractC23632g, obj);
        return obj;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: l */
    public void mo6688l(C23624f c23624f) {
        this.f65227o.m6386f(c23624f.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: z */
    public final void mo6680z(Object obj, Object obj2) throws IOException {
        throw new UnsupportedOperationException(C22128a.m8618h(C22128a.m8728C("Should never call `set()` on setterless property ('"), this.f65171c.f66304a, "')"));
    }
}
