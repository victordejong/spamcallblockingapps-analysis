package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.util.DisplayMetrics;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.b.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/l.class */
public final class C5616l implements AbstractC5544c<C5560i> {

    /* renamed from: a */
    public final C5608e f18683a;

    /* renamed from: b */
    public final AbstractC9866a<DisplayMetrics> f18684b;

    public C5616l(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        this.f18683a = eVar;
        this.f18684b = aVar;
    }

    /* renamed from: a */
    public static C5560i m23404a(C5608e eVar, DisplayMetrics displayMetrics) {
        C5560i f = eVar.m23419f(displayMetrics);
        C5546e.m23585a(f, "Cannot return null from a non-@Nullable @Provides method");
        return f;
    }

    /* renamed from: a */
    public static C5616l m23403a(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        return new C5616l(eVar, aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5560i get() {
        return m23404a(this.f18683a, this.f18684b.get());
    }
}
