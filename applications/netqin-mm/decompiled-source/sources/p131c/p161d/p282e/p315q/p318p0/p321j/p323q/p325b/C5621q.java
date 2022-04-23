package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
/* renamed from: c.d.e.q.p0.j.q.b.q */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/q.class */
public final class C5621q implements AbstractC5544c<AbstractC5863i> {

    /* renamed from: a */
    public final C5619o f18693a;

    public C5621q(C5619o oVar) {
        this.f18693a = oVar;
    }

    /* renamed from: a */
    public static C5621q m23393a(C5619o oVar) {
        return new C5621q(oVar);
    }

    /* renamed from: b */
    public static AbstractC5863i m23392b(C5619o oVar) {
        AbstractC5863i b = oVar.m23397b();
        C5546e.m23585a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC5863i get() {
        return m23392b(this.f18693a);
    }
}
