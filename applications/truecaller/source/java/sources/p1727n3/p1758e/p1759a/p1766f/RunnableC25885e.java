package p1727n3.p1758e.p1759a.p1766f;

import n3.e.a.e.z0;
import p1727n3.p1758e.p1759a.p1760d.a$a;
import p1727n3.p1758e.p1759a.p1761e.RunnableC25757j0;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.f.e */
/* loaded from: classes-dex2jar.jar:n3/e/a/f/e.class */
public final /* synthetic */ class RunnableC25885e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C25888h f72411a;

    /* renamed from: b */
    public final /* synthetic */ boolean f72412b;

    public /* synthetic */ RunnableC25885e(C25888h c25888h, boolean z) {
        this.f72411a = c25888h;
        this.f72412b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C25888h c25888h = this.f72411a;
        boolean z = this.f72412b;
        if (c25888h.f72416a == z) {
            return;
        }
        c25888h.f72416a = z;
        if (z) {
            if (!c25888h.f72417b) {
                return;
            }
            z0 z0Var = c25888h.f72418c;
            z0Var.b.execute(new RunnableC25757j0(z0Var));
            c25888h.f72417b = false;
            return;
        }
        synchronized (c25888h.f72420e) {
            c25888h.f72421f = new a$a();
        }
        C26247b<Void> c26247b = c25888h.f72422g;
        if (c26247b == null) {
            return;
        }
        C22128a.m8715F0("The camera control has became inactive.", c26247b);
        c25888h.f72422g = null;
    }
}
