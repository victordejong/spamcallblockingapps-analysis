package p081h.p203i.p204a.p206b.p209j;

import java.util.concurrent.Executor;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.C6612d;
/* renamed from: h.i.a.b.j.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/j.class */
public final class C6574j implements AbstractC6610b<Executor> {

    /* renamed from: h.i.a.b.j.j$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/j$a.class */
    public static final class C6575a {

        /* renamed from: a */
        public static final C6574j f16374a = new C6574j();
    }

    /* renamed from: a */
    public static C6574j m22312a() {
        return C6575a.f16374a;
    }

    /* renamed from: b */
    public static Executor m22311b() {
        Executor a = AbstractC6573i.m22313a();
        C6612d.m22238a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // javax.inject.Provider
    public Executor get() {
        return m22311b();
    }
}
