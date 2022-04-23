package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5644c;
import p530d.p541c.p570z.AbstractC9864a;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/b.class */
public final class C5767b implements AbstractC5521b<AbstractC9864a<String>> {

    /* renamed from: a */
    public final C5765a f19003a;

    /* renamed from: b */
    public final AbstractC9866a<C5644c> f19004b;

    public C5767b(C5765a aVar, AbstractC9866a<C5644c> aVar2) {
        this.f19003a = aVar;
        this.f19004b = aVar2;
    }

    /* renamed from: a */
    public static C5767b m23067a(C5765a aVar, AbstractC9866a<C5644c> aVar2) {
        return new C5767b(aVar, aVar2);
    }

    /* renamed from: a */
    public static AbstractC9864a<String> m23068a(C5765a aVar, C5644c cVar) {
        AbstractC9864a<String> a = aVar.m23072a(cVar);
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC9864a<String> get() {
        return m23068a(this.f19003a, this.f19004b.get());
    }
}
