package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5730s;
/* renamed from: c.d.e.q.q0.s3.b.o */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/o.class */
public final class C5793o implements AbstractC5521b<C5730s> {

    /* renamed from: a */
    public final C5791n f19038a;

    public C5793o(C5791n nVar) {
        this.f19038a = nVar;
    }

    /* renamed from: a */
    public static C5793o m23013a(C5791n nVar) {
        return new C5793o(nVar);
    }

    /* renamed from: b */
    public static C5730s m23012b(C5791n nVar) {
        C5730s a = nVar.m23016a();
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5730s get() {
        return m23012b(this.f19038a);
    }
}
