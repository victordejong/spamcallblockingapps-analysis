package p131c.p161d.p170b.p173b.p176i;

import java.util.concurrent.Executor;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.C2600d;
/* renamed from: c.d.b.b.i.j */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/j.class */
public final class C2565j implements AbstractC2598b<Executor> {

    /* renamed from: c.d.b.b.i.j$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/j$a.class */
    public static final class C2566a {

        /* renamed from: a */
        public static final C2565j f9617a = new C2565j();
    }

    /* renamed from: a */
    public static C2565j m29522a() {
        return C2566a.f9617a;
    }

    /* renamed from: b */
    public static Executor m29521b() {
        Executor a = AbstractC2564i.m29523a();
        C2600d.m29451a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public Executor get() {
        return m29521b();
    }
}
