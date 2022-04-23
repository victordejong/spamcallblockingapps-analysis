package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.util.DisplayMetrics;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.b.n */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/n.class */
public final class C5618n implements AbstractC5544c<C5560i> {

    /* renamed from: a */
    public final C5608e f18687a;

    /* renamed from: b */
    public final AbstractC9866a<DisplayMetrics> f18688b;

    public C5618n(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        this.f18687a = eVar;
        this.f18688b = aVar;
    }

    /* renamed from: a */
    public static C5560i m23400a(C5608e eVar, DisplayMetrics displayMetrics) {
        C5560i h = eVar.m23417h(displayMetrics);
        C5546e.m23585a(h, "Cannot return null from a non-@Nullable @Provides method");
        return h;
    }

    /* renamed from: a */
    public static C5618n m23399a(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        return new C5618n(eVar, aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5560i get() {
        return m23400a(this.f18687a, this.f18688b.get());
    }
}
