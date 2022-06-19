package p1727n3.p1874y.p1906c;

import n3.h.a.f;
/* renamed from: n3.y.c.m$e */
/* loaded from: classes-dex2jar.jar:n3/y/c/m$e.class */
public class m$e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ f f77385a;

    /* renamed from: b */
    public final /* synthetic */ m f77386b;

    public m$e(m mVar, f fVar) {
        this.f77386b = mVar;
        this.f77385a = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            C27477j0 c27477j0 = this.f77386b.a;
            if (c27477j0.f77349g != null) {
                c27477j0.f77346d.removeCallbacks(c27477j0.f77348f);
                c27477j0.f77349g.g();
                c27477j0.f77349g = null;
                c27477j0.f77353k.m221a();
                c27477j0.f77354l = false;
            }
            this.f77385a.h((Object) null);
        } catch (Throwable th) {
            this.f77385a.i(th);
        }
    }
}
