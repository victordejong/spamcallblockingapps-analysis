package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.view.LayoutInflater;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
/* renamed from: c.d.e.q.p0.j.q.b.r */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/r.class */
public final class C5622r implements AbstractC5544c<LayoutInflater> {

    /* renamed from: a */
    public final C5619o f18694a;

    public C5622r(C5619o oVar) {
        this.f18694a = oVar;
    }

    /* renamed from: a */
    public static C5622r m23391a(C5619o oVar) {
        return new C5622r(oVar);
    }

    /* renamed from: b */
    public static LayoutInflater m23390b(C5619o oVar) {
        LayoutInflater c = oVar.m23396c();
        C5546e.m23585a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }

    @Override // p571e.p572a.AbstractC9866a
    public LayoutInflater get() {
        return m23390b(this.f18694a);
    }
}
