package p1727n3.p1758e.p1759a.p1761e;

import java.util.Objects;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.p1768j1.C25999p1;
/* renamed from: n3.e.a.e.r */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/r.class */
public final /* synthetic */ class RunnableC25850r implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ b1 f72296a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC25921g1 f72297b;

    public /* synthetic */ RunnableC25850r(b1 b1Var, AbstractC25921g1 abstractC25921g1) {
        this.f72296a = b1Var;
        this.f72297b = abstractC25921g1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b1 b1Var = this.f72296a;
        AbstractC25921g1 abstractC25921g1 = this.f72297b;
        Objects.requireNonNull(b1Var);
        b1Var.o("Use case " + abstractC25921g1 + " UPDATED", (Throwable) null);
        C25999p1 c25999p1 = b1Var.a;
        c25999p1.m2799h(abstractC25921g1.m2902d() + abstractC25921g1.hashCode(), abstractC25921g1.f72510k);
        b1Var.z();
    }
}
