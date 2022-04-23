package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p335s.AbstractC5898g;
/* renamed from: c.d.e.q.q0.s3.b.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/h.class */
public final class C5779h implements AbstractC5521b<AbstractC5898g> {

    /* renamed from: a */
    public final C5771d f19026a;

    public C5779h(C5771d dVar) {
        this.f19026a = dVar;
    }

    /* renamed from: a */
    public static C5779h m23039a(C5771d dVar) {
        return new C5779h(dVar);
    }

    /* renamed from: b */
    public static AbstractC5898g m23038b(C5771d dVar) {
        AbstractC5898g b = dVar.m23056b();
        C5523d.m23633a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC5898g get() {
        return m23038b(this.f19026a);
    }
}
