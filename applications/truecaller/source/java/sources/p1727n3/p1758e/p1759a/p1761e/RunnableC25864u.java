package p1727n3.p1758e.p1759a.p1761e;

import java.util.Collection;
/* renamed from: n3.e.a.e.u */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/u.class */
public final /* synthetic */ class RunnableC25864u implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ b1 f72347a;

    /* renamed from: b */
    public final /* synthetic */ Collection f72348b;

    public /* synthetic */ RunnableC25864u(b1 b1Var, Collection collection) {
        this.f72347a = b1Var;
        this.f72348b = collection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b1 b1Var = this.f72347a;
        try {
            b1Var.y(this.f72348b);
        } finally {
            b1Var.f.i();
        }
    }
}
