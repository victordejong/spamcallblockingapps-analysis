package p131c.p161d.p282e.p315q.p318p0.p321j.p322p;

import android.view.LayoutInflater;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.p.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/e.class */
public final class C5582e implements AbstractC5544c<C5580d> {

    /* renamed from: a */
    public final AbstractC9866a<C5560i> f18600a;

    /* renamed from: b */
    public final AbstractC9866a<LayoutInflater> f18601b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC5863i> f18602c;

    public C5582e(AbstractC9866a<C5560i> aVar, AbstractC9866a<LayoutInflater> aVar2, AbstractC9866a<AbstractC5863i> aVar3) {
        this.f18600a = aVar;
        this.f18601b = aVar2;
        this.f18602c = aVar3;
    }

    /* renamed from: a */
    public static C5580d m23470a(C5560i iVar, LayoutInflater layoutInflater, AbstractC5863i iVar2) {
        return new C5580d(iVar, layoutInflater, iVar2);
    }

    /* renamed from: a */
    public static C5582e m23469a(AbstractC9866a<C5560i> aVar, AbstractC9866a<LayoutInflater> aVar2, AbstractC9866a<AbstractC5863i> aVar3) {
        return new C5582e(aVar, aVar2, aVar3);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5580d get() {
        return m23470a(this.f18600a.get(), this.f18601b.get(), this.f18602c.get());
    }
}
