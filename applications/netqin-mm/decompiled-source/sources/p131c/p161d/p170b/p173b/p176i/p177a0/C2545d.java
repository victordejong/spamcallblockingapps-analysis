package p131c.p161d.p170b.p173b.p176i.p177a0;

import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.C2600d;
/* renamed from: c.d.b.b.i.a0.d */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/a0/d.class */
public final class C2545d implements AbstractC2598b<AbstractC2541a> {

    /* renamed from: c.d.b.b.i.a0.d$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/a0/d$a.class */
    public static final class C2546a {

        /* renamed from: a */
        public static final C2545d f9583a = new C2545d();
    }

    /* renamed from: a */
    public static C2545d m29557a() {
        return C2546a.f9583a;
    }

    /* renamed from: b */
    public static AbstractC2541a m29556b() {
        AbstractC2541a b = AbstractC2542b.m29561b();
        C2600d.m29451a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC2541a get() {
        return m29556b();
    }
}
