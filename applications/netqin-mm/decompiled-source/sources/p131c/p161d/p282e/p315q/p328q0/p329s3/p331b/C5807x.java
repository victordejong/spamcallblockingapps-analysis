package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6272l;
import p530d.p531a.AbstractC9225e;
import p530d.p531a.C9260k0;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.x */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/x.class */
public final class C5807x implements AbstractC5521b<C6272l.C6274b> {

    /* renamed from: a */
    public final C5805v f19056a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC9225e> f19057b;

    /* renamed from: c */
    public final AbstractC9866a<C9260k0> f19058c;

    public C5807x(C5805v vVar, AbstractC9866a<AbstractC9225e> aVar, AbstractC9866a<C9260k0> aVar2) {
        this.f19056a = vVar;
        this.f19057b = aVar;
        this.f19058c = aVar2;
    }

    /* renamed from: a */
    public static C5807x m22983a(C5805v vVar, AbstractC9866a<AbstractC9225e> aVar, AbstractC9866a<C9260k0> aVar2) {
        return new C5807x(vVar, aVar, aVar2);
    }

    /* renamed from: a */
    public static C6272l.C6274b m22984a(C5805v vVar, AbstractC9225e eVar, C9260k0 k0Var) {
        C6272l.C6274b a = vVar.m22987a(eVar, k0Var);
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public C6272l.C6274b get() {
        return m22984a(this.f19056a, this.f19057b.get(), this.f19058c.get());
    }
}
