package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23485s;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.z.a0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/a0.class */
public class C23539a0<T> extends AbstractC23541b0<T> implements AbstractC23474i, AbstractC23485s {

    /* renamed from: d */
    public final AbstractC23918i<Object, T> f65305d;

    /* renamed from: e */
    public final AbstractC23698i f65306e;

    /* renamed from: f */
    public final AbstractC23700j<Object> f65307f;

    public C23539a0(AbstractC23918i<?, T> abstractC23918i) {
        super(Object.class);
        this.f65305d = abstractC23918i;
        this.f65306e = null;
        this.f65307f = null;
    }

    public C23539a0(AbstractC23918i<Object, T> abstractC23918i, AbstractC23698i abstractC23698i, AbstractC23700j<?> abstractC23700j) {
        super(abstractC23698i);
        this.f65305d = abstractC23918i;
        this.f65306e = abstractC23698i;
        this.f65307f = abstractC23700j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23700j<?> abstractC23700j = this.f65307f;
        if (abstractC23700j == null) {
            AbstractC23698i mo5737a = this.f65305d.mo5737a(abstractC23632g.mo6470i());
            AbstractC23918i<Object, T> abstractC23918i = this.f65305d;
            AbstractC23700j<Object> m6461s = abstractC23632g.m6461s(mo5737a, abstractC23462d);
            C23914g.m5768M(C23539a0.class, this, "withDelegate");
            return new C23539a0(abstractC23918i, mo5737a, m6461s);
        }
        AbstractC23700j<?> m6499G = abstractC23632g.m6499G(abstractC23700j, abstractC23462d, this.f65306e);
        if (m6499G == this.f65307f) {
            return this;
        }
        AbstractC23918i<Object, T> abstractC23918i2 = this.f65305d;
        AbstractC23698i abstractC23698i = this.f65306e;
        C23914g.m5768M(C23539a0.class, this, "withDelegate");
        return new C23539a0(abstractC23918i2, abstractC23698i, m6499G);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23485s
    /* renamed from: b */
    public void mo6548b(AbstractC23632g abstractC23632g) throws C23733k {
        AbstractC23700j<Object> abstractC23700j = this.f65307f;
        if (abstractC23700j == null || !(abstractC23700j instanceof AbstractC23485s)) {
            return;
        }
        ((AbstractC23485s) abstractC23700j).mo6548b(abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public T mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        Object mo6232d = this.f65307f.mo6232d(abstractC23376j, abstractC23632g);
        if (mo6232d == null) {
            return null;
        }
        return this.f65305d.convert(mo6232d);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public T mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        if (this.f65306e.f65728a.isAssignableFrom(obj.getClass())) {
            return (T) this.f65307f.mo6231e(abstractC23376j, abstractC23632g, obj);
        }
        StringBuilder m8728C = C22128a.m8728C("Cannot update object of type %s (using deserializer for type %s)");
        m8728C.append(obj.getClass().getName());
        throw new UnsupportedOperationException(String.format(m8728C.toString(), this.f65306e));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        Object mo6232d = this.f65307f.mo6232d(abstractC23376j, abstractC23632g);
        if (mo6232d == null) {
            return null;
        }
        return this.f65305d.convert(mo6232d);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: m */
    public Class<?> mo6223m() {
        return this.f65307f.mo6223m();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return this.f65307f.mo6221o();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return this.f65307f.mo6220p(c23624f);
    }
}
