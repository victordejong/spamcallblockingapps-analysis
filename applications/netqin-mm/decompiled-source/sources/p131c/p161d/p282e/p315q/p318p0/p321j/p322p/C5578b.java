package p131c.p161d.p282e.p315q.p318p0.p321j.p322p;

import android.view.LayoutInflater;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.p.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/b.class */
public final class C5578b implements AbstractC5544c<C5577a> {

    /* renamed from: a */
    public final AbstractC9866a<C5560i> f18582a;

    /* renamed from: b */
    public final AbstractC9866a<LayoutInflater> f18583b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC5863i> f18584c;

    public C5578b(AbstractC9866a<C5560i> aVar, AbstractC9866a<LayoutInflater> aVar2, AbstractC9866a<AbstractC5863i> aVar3) {
        this.f18582a = aVar;
        this.f18583b = aVar2;
        this.f18584c = aVar3;
    }

    /* renamed from: a */
    public static C5577a m23484a(C5560i iVar, LayoutInflater layoutInflater, AbstractC5863i iVar2) {
        return new C5577a(iVar, layoutInflater, iVar2);
    }

    /* renamed from: a */
    public static C5578b m23483a(AbstractC9866a<C5560i> aVar, AbstractC9866a<LayoutInflater> aVar2, AbstractC9866a<AbstractC5863i> aVar3) {
        return new C5578b(aVar, aVar2, aVar3);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5577a get() {
        return m23484a(this.f18582a.get(), this.f18583b.get(), this.f18584c.get());
    }
}
