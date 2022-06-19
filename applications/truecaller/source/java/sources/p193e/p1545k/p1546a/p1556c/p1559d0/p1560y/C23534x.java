package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23949u;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
/* renamed from: e.k.a.c.d0.y.x */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/x.class */
public final class C23534x extends AbstractC23488u {

    /* renamed from: o */
    public final C23531v f65299o;

    public C23534x(C23531v c23531v, C23949u c23949u) {
        super(c23531v.f65291b, c23531v.f65290a, c23949u, c23531v.f65294e);
        this.f65299o = c23531v;
    }

    public C23534x(C23534x c23534x, AbstractC23700j<?> abstractC23700j, AbstractC23484r abstractC23484r) {
        super(c23534x, abstractC23700j, abstractC23484r);
        this.f65299o = c23534x.f65299o;
    }

    public C23534x(C23534x c23534x, C23951v c23951v) {
        super(c23534x, c23951v);
        this.f65299o = c23534x.f65299o;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: A */
    public Object mo6686A(Object obj, Object obj2) throws IOException {
        AbstractC23488u abstractC23488u = this.f65299o.f65295f;
        if (abstractC23488u != null) {
            return abstractC23488u.mo6686A(obj, obj2);
        }
        throw new UnsupportedOperationException("Should not call set() on ObjectIdProperty that has no SettableBeanProperty");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: D */
    public AbstractC23488u mo6685D(C23951v c23951v) {
        return new C23534x(this, c23951v);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: E */
    public AbstractC23488u mo6684E(AbstractC23484r abstractC23484r) {
        return new C23534x(this, this.f65175g, abstractC23484r);
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
        return new C23534x(this, abstractC23700j, abstractC23700j3);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u, p193e.p1545k.p1546a.p1556c.AbstractC23462d
    /* renamed from: c */
    public AbstractC23663i mo6108c() {
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: i */
    public void mo6682i(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        mo6681j(abstractC23376j, abstractC23632g, obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: j */
    public Object mo6681j(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_NULL)) {
            return null;
        }
        Object mo6232d = this.f65175g.mo6232d(abstractC23376j, abstractC23632g);
        C23531v c23531v = this.f65299o;
        abstractC23632g.mo6457w(mo6232d, c23531v.f65292c, c23531v.f65293d).m6720b(obj);
        AbstractC23488u abstractC23488u = this.f65299o.f65295f;
        return abstractC23488u != null ? abstractC23488u.mo6686A(obj, mo6232d) : obj;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: z */
    public void mo6680z(Object obj, Object obj2) throws IOException {
        mo6686A(obj, obj2);
    }
}
