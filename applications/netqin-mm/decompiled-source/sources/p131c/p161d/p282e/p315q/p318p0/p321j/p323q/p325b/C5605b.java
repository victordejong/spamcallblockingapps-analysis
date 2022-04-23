package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.app.Application;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
/* renamed from: c.d.e.q.p0.j.q.b.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/b.class */
public final class C5605b implements AbstractC5544c<Application> {

    /* renamed from: a */
    public final C5604a f18664a;

    public C5605b(C5604a aVar) {
        this.f18664a = aVar;
    }

    /* renamed from: a */
    public static C5605b m23431a(C5604a aVar) {
        return new C5605b(aVar);
    }

    /* renamed from: b */
    public static Application m23430b(C5604a aVar) {
        Application a = aVar.m23432a();
        C5546e.m23585a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public Application get() {
        return m23430b(this.f18664a);
    }
}
