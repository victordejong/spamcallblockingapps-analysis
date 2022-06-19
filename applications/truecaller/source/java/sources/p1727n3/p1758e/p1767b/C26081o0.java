package p1727n3.p1758e.p1767b;

import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.b.o0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/o0.class */
public class C26081o0 implements AbstractC26030d<Void> {

    /* renamed from: a */
    public final /* synthetic */ C26247b f72758a;

    /* renamed from: b */
    public final /* synthetic */ C26083p0 f72759b;

    public C26081o0(C26247b c26247b, C26083p0 c26083p0) {
        this.f72758a = c26247b;
        this.f72759b = c26083p0;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
    /* renamed from: a */
    public void mo2689a(Throwable th) {
        C26103y0.m2720e("CameraX", "CameraX initialize() failed", th);
        synchronized (C26083p0.f72764m) {
            if (C26083p0.f72765n == this.f72759b) {
                C26083p0.m2730f();
            }
        }
        this.f72758a.m2256c(th);
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
    public void onSuccess(Void r4) {
        this.f72758a.m2258a(null);
    }
}
