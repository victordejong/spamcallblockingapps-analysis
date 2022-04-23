package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5644c;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/c.class */
public final class C5769c implements AbstractC5521b<C5644c> {

    /* renamed from: a */
    public final C5765a f19006a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC5143a> f19007b;

    public C5769c(C5765a aVar, AbstractC9866a<AbstractC5143a> aVar2) {
        this.f19006a = aVar;
        this.f19007b = aVar2;
    }

    /* renamed from: a */
    public static C5644c m23064a(C5765a aVar, AbstractC5143a aVar2) {
        C5644c a = aVar.m23073a(aVar2);
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: a */
    public static C5769c m23063a(C5765a aVar, AbstractC9866a<AbstractC5143a> aVar2) {
        return new C5769c(aVar, aVar2);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5644c get() {
        return m23064a(this.f19006a, this.f19007b.get());
    }
}
