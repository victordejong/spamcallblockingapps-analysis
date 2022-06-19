package p193e.p194a.p195a.p276p0.p277m;

import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1272u3.C20590f;
import s1.z.c.l;
/* renamed from: e.a.a.p0.m.c */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/m/c.class */
public final class C7175c implements C20590f.AbstractC20591a {

    /* renamed from: a */
    public final a<C7172a> f23068a;

    @Inject
    public C7175c(a<C7172a> aVar) {
        l.e(aVar, "flagObserver");
        this.f23068a = aVar;
    }

    @Override // p193e.p194a.p1272u3.C20590f.AbstractC20591a
    /* renamed from: Q1 */
    public void mo11006Q1() {
        ((C7172a) this.f23068a.get()).m30025a(true);
    }

    @Override // p193e.p194a.p1272u3.C20590f.AbstractC20591a
    /* renamed from: a */
    public void mo11005a() {
        ((C7172a) this.f23068a.get()).m30025a(false);
    }
}
