package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.p332t3.AbstractC5814a;
/* renamed from: c.d.e.q.q0.s3.b.o0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/o0.class */
public final class C5794o0 implements AbstractC5521b<AbstractC5814a> {

    /* renamed from: a */
    public final C5792n0 f19039a;

    public C5794o0(C5792n0 n0Var) {
        this.f19039a = n0Var;
    }

    /* renamed from: a */
    public static C5794o0 m23011a(C5792n0 n0Var) {
        return new C5794o0(n0Var);
    }

    /* renamed from: b */
    public static AbstractC5814a m23010b(C5792n0 n0Var) {
        AbstractC5814a a = n0Var.m23014a();
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC5814a get() {
        return m23010b(this.f19039a);
    }
}
