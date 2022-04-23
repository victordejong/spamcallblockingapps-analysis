package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.util.DisplayMetrics;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.b.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/i.class */
public final class C5613i implements AbstractC5544c<C5560i> {

    /* renamed from: a */
    public final C5608e f18677a;

    /* renamed from: b */
    public final AbstractC9866a<DisplayMetrics> f18678b;

    public C5613i(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        this.f18677a = eVar;
        this.f18678b = aVar;
    }

    /* renamed from: a */
    public static C5560i m23410a(C5608e eVar, DisplayMetrics displayMetrics) {
        C5560i d = eVar.m23421d(displayMetrics);
        C5546e.m23585a(d, "Cannot return null from a non-@Nullable @Provides method");
        return d;
    }

    /* renamed from: a */
    public static C5613i m23409a(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        return new C5613i(eVar, aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5560i get() {
        return m23410a(this.f18677a, this.f18678b.get());
    }
}
