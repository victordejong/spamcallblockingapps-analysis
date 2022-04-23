package p012b.p076s.p112c.p114g;

import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1551e;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1631p;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
/* renamed from: b.s.c.g.b */
/* loaded from: classes-dex2jar.jar:b/s/c/g/b.class */
public class C1718b extends AbstractC1551e<Void> {

    /* renamed from: i */
    public final AbstractC1634r f7004i;

    /* renamed from: j */
    public AbstractC1252n0 f7005j;

    public C1718b(AbstractC1634r rVar) {
        this.f7004i = rVar;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public AbstractC1631p mo32294a(AbstractC1634r.C1635a aVar, AbstractC1678b bVar, long j) {
        return this.f7004i.mo32294a(aVar, bVar, j);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public void mo32295a(AbstractC1631p pVar) {
        this.f7004i.mo32295a(pVar);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1551e, p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: a */
    public void mo32293a(AbstractC1704x xVar) {
        super.mo32293a(xVar);
        m32872a((C1718b) null, this.f7004i);
    }

    /* renamed from: a */
    public void mo32291b(Void r5, AbstractC1634r rVar, AbstractC1252n0 n0Var, Object obj) {
        this.f7005j = n0Var;
        m32924a(n0Var, obj);
    }

    /* renamed from: d */
    public long m32290d() {
        AbstractC1252n0 n0Var = this.f7005j;
        return n0Var == null ? -9223372036854775807L : n0Var.m34045a(0, new AbstractC1252n0.C1255c()).m34021c();
    }
}
