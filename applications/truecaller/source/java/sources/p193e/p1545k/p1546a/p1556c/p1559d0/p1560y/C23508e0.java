package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.io.Serializable;
import java.util.Collection;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
/* renamed from: e.k.a.c.d0.y.e0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/e0.class */
public final class C23508e0 extends AbstractC23700j<Object> implements Serializable {

    /* renamed from: a */
    public final AbstractC23709e f65239a;

    /* renamed from: b */
    public final AbstractC23700j<Object> f65240b;

    public C23508e0(AbstractC23709e abstractC23709e, AbstractC23700j<?> abstractC23700j) {
        this.f65239a = abstractC23709e;
        this.f65240b = abstractC23700j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r
    /* renamed from: c */
    public Object mo6233c(AbstractC23632g abstractC23632g) throws C23733k {
        return this.f65240b.mo6233c(abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return this.f65240b.mo6230f(abstractC23376j, abstractC23632g, this.f65239a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        return this.f65240b.mo6231e(abstractC23376j, abstractC23632g, obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        throw new IllegalStateException("Type-wrapped deserializer's deserializeWithType should never get called");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return this.f65240b.mo6226j(abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: k */
    public Collection<Object> mo6225k() {
        return this.f65240b.mo6225k();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: m */
    public Class<?> mo6223m() {
        return this.f65240b.mo6223m();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return this.f65240b.mo6221o();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return this.f65240b.mo6220p(c23624f);
    }
}
