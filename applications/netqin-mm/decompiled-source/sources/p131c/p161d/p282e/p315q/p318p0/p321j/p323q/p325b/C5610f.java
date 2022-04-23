package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.util.DisplayMetrics;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.b.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/f.class */
public final class C5610f implements AbstractC5544c<C5560i> {

    /* renamed from: a */
    public final C5608e f18671a;

    /* renamed from: b */
    public final AbstractC9866a<DisplayMetrics> f18672b;

    public C5610f(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        this.f18671a = eVar;
        this.f18672b = aVar;
    }

    /* renamed from: a */
    public static C5560i m23416a(C5608e eVar, DisplayMetrics displayMetrics) {
        C5560i a = eVar.m23425a(displayMetrics);
        C5546e.m23585a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: a */
    public static C5610f m23415a(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        return new C5610f(eVar, aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5560i get() {
        return m23416a(this.f18671a, this.f18672b.get());
    }
}
