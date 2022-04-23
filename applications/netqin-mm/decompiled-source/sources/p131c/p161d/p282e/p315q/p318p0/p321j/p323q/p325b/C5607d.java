package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import p131c.p161d.p282e.p315q.C5841r;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
/* renamed from: c.d.e.q.p0.j.q.b.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/d.class */
public final class C5607d implements AbstractC5544c<C5841r> {

    /* renamed from: a */
    public final C5606c f18666a;

    public C5607d(C5606c cVar) {
        this.f18666a = cVar;
    }

    /* renamed from: a */
    public static C5607d m23428a(C5606c cVar) {
        return new C5607d(cVar);
    }

    /* renamed from: b */
    public static C5841r m23427b(C5606c cVar) {
        C5841r a = cVar.m23429a();
        C5546e.m23585a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5841r get() {
        return m23427b(this.f18666a);
    }
}
