package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
/* renamed from: e.k.a.c.d0.y.q */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/q.class */
public class C23526q extends AbstractC23488u.AbstractC23489a {

    /* renamed from: p */
    public final AbstractC23663i f65280p;

    public C23526q(AbstractC23488u abstractC23488u, AbstractC23663i abstractC23663i) {
        super(abstractC23488u);
        this.f65280p = abstractC23663i;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u.AbstractC23489a, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: A */
    public Object mo6686A(Object obj, Object obj2) throws IOException {
        Object obj3 = obj;
        if (obj2 != null) {
            obj3 = this.f65182o.mo6686A(obj, obj2);
        }
        return obj3;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u.AbstractC23489a
    /* renamed from: I */
    public AbstractC23488u mo6694I(AbstractC23488u abstractC23488u) {
        return new C23526q(abstractC23488u, this.f65280p);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: i */
    public void mo6682i(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        Object mo6374j = this.f65280p.mo6374j(obj);
        Object m6762h = mo6374j == null ? this.f65182o.m6762h(abstractC23376j, abstractC23632g) : this.f65182o.m6761k(abstractC23376j, abstractC23632g, mo6374j);
        if (m6762h != mo6374j) {
            this.f65182o.mo6680z(obj, m6762h);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: j */
    public Object mo6681j(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        Object mo6374j = this.f65280p.mo6374j(obj);
        Object m6762h = mo6374j == null ? this.f65182o.m6762h(abstractC23376j, abstractC23632g) : this.f65182o.m6761k(abstractC23376j, abstractC23632g, mo6374j);
        return (m6762h == mo6374j || m6762h == null) ? obj : this.f65182o.mo6686A(obj, m6762h);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u.AbstractC23489a, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: z */
    public void mo6680z(Object obj, Object obj2) throws IOException {
        if (obj2 != null) {
            this.f65182o.mo6680z(obj, obj2);
        }
    }
}
