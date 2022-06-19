package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
/* renamed from: e.k.a.c.l0.s.p */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/p.class */
public final class C23799p extends AbstractC23890n<Object> implements AbstractC23766i {

    /* renamed from: a */
    public final AbstractC23712h f65921a;

    /* renamed from: b */
    public final AbstractC23890n<Object> f65922b;

    public C23799p(AbstractC23712h abstractC23712h, AbstractC23890n<?> abstractC23890n) {
        this.f65921a = abstractC23712h;
        this.f65922b = abstractC23890n;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    public AbstractC23890n<?> mo5992b(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<?> abstractC23890n = this.f65922b;
        AbstractC23890n<?> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n instanceof AbstractC23766i) {
            abstractC23890n2 = abstractC23425a0.m6891I(abstractC23890n, abstractC23462d);
        }
        return abstractC23890n2 == this.f65922b ? this : new C23799p(this.f65921a, abstractC23890n2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: c */
    public Class<Object> mo5897c() {
        return Object.class;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        this.f65922b.mo5893g(obj, abstractC23372g, abstractC23425a0, this.f65921a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        this.f65922b.mo5893g(obj, abstractC23372g, abstractC23425a0, abstractC23712h);
    }
}
