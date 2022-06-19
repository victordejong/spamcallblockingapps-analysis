package p1727n3.p1758e.p1759a.p1761e;

import java.util.Objects;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.p1768j1.C25999p1;
/* renamed from: n3.e.a.e.n */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/n.class */
public final /* synthetic */ class RunnableC25838n implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ b1 f72281a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC25921g1 f72282b;

    public /* synthetic */ RunnableC25838n(b1 b1Var, AbstractC25921g1 abstractC25921g1) {
        this.f72281a = b1Var;
        this.f72282b = abstractC25921g1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b1 b1Var = this.f72281a;
        AbstractC25921g1 abstractC25921g1 = this.f72282b;
        Objects.requireNonNull(b1Var);
        b1Var.o("Use case " + abstractC25921g1 + " ACTIVE", (Throwable) null);
        try {
            C25999p1 c25999p1 = b1Var.a;
            c25999p1.m2802e(abstractC25921g1.m2902d() + abstractC25921g1.hashCode(), abstractC25921g1.f72510k);
            C25999p1 c25999p12 = b1Var.a;
            c25999p12.m2799h(abstractC25921g1.m2902d() + abstractC25921g1.hashCode(), abstractC25921g1.f72510k);
            b1Var.z();
        } catch (NullPointerException e) {
            b1Var.o("Failed to set already detached use case active", (Throwable) null);
        }
    }
}
