package p1727n3.p1758e.p1759a.p1761e;

import java.util.Objects;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.p1768j1.C25999p1;
/* renamed from: n3.e.a.e.v */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/v.class */
public final /* synthetic */ class RunnableC25867v implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ b1 f72356a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC25921g1 f72357b;

    public /* synthetic */ RunnableC25867v(b1 b1Var, AbstractC25921g1 abstractC25921g1) {
        this.f72356a = b1Var;
        this.f72357b = abstractC25921g1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b1 b1Var = this.f72356a;
        AbstractC25921g1 abstractC25921g1 = this.f72357b;
        Objects.requireNonNull(b1Var);
        b1Var.o("Use case " + abstractC25921g1 + " INACTIVE", (Throwable) null);
        C25999p1 c25999p1 = b1Var.a;
        c25999p1.m2800g(abstractC25921g1.m2902d() + abstractC25921g1.hashCode());
        b1Var.z();
    }
}
