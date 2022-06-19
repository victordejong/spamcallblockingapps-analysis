package p1727n3.p1874y.p1876b.p1877a.p1905y0;

import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.p1880o0.C27154b;
import p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o;
/* renamed from: n3.y.b.a.y0.n */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/y0/n.class */
public final /* synthetic */ class RunnableC27461n implements Runnable {

    /* renamed from: a */
    public final AbstractC27462o.C27463a f77289a;

    /* renamed from: b */
    public final C27154b f77290b;

    public RunnableC27461n(AbstractC27462o.C27463a c27463a, C27154b c27154b) {
        this.f77289a = c27463a;
        this.f77290b = c27154b;
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC27462o.C27463a c27463a = this.f77289a;
        C27154b c27154b = this.f77290b;
        Objects.requireNonNull(c27463a);
        synchronized (c27154b) {
        }
        c27463a.f77292b.mo246u(c27154b);
    }
}
