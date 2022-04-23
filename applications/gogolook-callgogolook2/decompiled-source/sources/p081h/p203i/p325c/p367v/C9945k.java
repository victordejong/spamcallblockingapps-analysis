package p081h.p203i.p325c.p367v;

import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p325c.p367v.AbstractC9947m;
import p081h.p203i.p325c.p367v.p368q.AbstractC9958d;
/* renamed from: h.i.c.v.k */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/k.class */
public class C9945k implements AbstractC9950o {

    /* renamed from: a */
    public final C9951p f22503a;

    /* renamed from: b */
    public final C9145i<AbstractC9947m> f22504b;

    public C9945k(C9951p pVar, C9145i<AbstractC9947m> iVar) {
        this.f22503a = pVar;
        this.f22504b = iVar;
    }

    @Override // p081h.p203i.p325c.p367v.AbstractC9950o
    /* renamed from: a */
    public boolean mo13885a(AbstractC9958d dVar) {
        if (!dVar.m13850j() || this.f22503a.m13882a(dVar)) {
            return false;
        }
        C9145i<AbstractC9947m> iVar = this.f22504b;
        AbstractC9947m.AbstractC9948a d = AbstractC9947m.m13893d();
        d.mo13890a(dVar.mo13863a());
        d.mo13889b(dVar.mo13859b());
        d.mo13891a(dVar.mo13853g());
        iVar.m16006a((C9145i<AbstractC9947m>) d.mo13892a());
        return true;
    }

    @Override // p081h.p203i.p325c.p367v.AbstractC9950o
    /* renamed from: a */
    public boolean mo13884a(Exception exc) {
        this.f22504b.m16005b(exc);
        return true;
    }
}
