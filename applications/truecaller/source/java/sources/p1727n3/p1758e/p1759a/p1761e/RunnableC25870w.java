package p1727n3.p1758e.p1759a.p1761e;

import java.util.Objects;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.p1768j1.C25999p1;
/* renamed from: n3.e.a.e.w */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/w.class */
public final /* synthetic */ class RunnableC25870w implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ b1 f72362a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC25921g1 f72363b;

    public /* synthetic */ RunnableC25870w(b1 b1Var, AbstractC25921g1 abstractC25921g1) {
        this.f72362a = b1Var;
        this.f72363b = abstractC25921g1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b1 b1Var = this.f72362a;
        AbstractC25921g1 abstractC25921g1 = this.f72363b;
        Objects.requireNonNull(b1Var);
        b1Var.o("Use case " + abstractC25921g1 + " RESET", (Throwable) null);
        C25999p1 c25999p1 = b1Var.a;
        c25999p1.m2799h(abstractC25921g1.m2902d() + abstractC25921g1.hashCode(), abstractC25921g1.f72510k);
        b1Var.w(false);
        b1Var.z();
        if (b1Var.d == b1$e.OPENED) {
            b1Var.t();
        }
    }
}
