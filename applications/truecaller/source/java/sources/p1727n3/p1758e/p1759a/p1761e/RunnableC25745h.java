package p1727n3.p1758e.p1759a.p1761e;

import java.util.concurrent.Executor;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q;
/* renamed from: n3.e.a.e.h */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/h.class */
public final /* synthetic */ class RunnableC25745h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ z0 f72117a;

    /* renamed from: b */
    public final /* synthetic */ Executor f72118b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC26002q f72119c;

    public /* synthetic */ RunnableC25745h(z0 z0Var, Executor executor, AbstractC26002q abstractC26002q) {
        this.f72117a = z0Var;
        this.f72118b = executor;
        this.f72119c = abstractC26002q;
    }

    @Override // java.lang.Runnable
    public final void run() {
        z0 z0Var = this.f72117a;
        Executor executor = this.f72118b;
        AbstractC26002q abstractC26002q = this.f72119c;
        z0$a z0_a = z0Var.r;
        z0_a.f72397a.add(abstractC26002q);
        z0_a.f72398b.put(abstractC26002q, executor);
    }
}
