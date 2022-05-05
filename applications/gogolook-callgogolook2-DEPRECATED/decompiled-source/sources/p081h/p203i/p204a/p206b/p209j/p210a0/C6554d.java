package p081h.p203i.p204a.p206b.p209j.p210a0;

import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.C6612d;
/* renamed from: h.i.a.b.j.a0.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/a0/d.class */
public final class C6554d implements AbstractC6610b<AbstractC6550a> {

    /* renamed from: h.i.a.b.j.a0.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/a0/d$a.class */
    public static final class C6555a {

        /* renamed from: a */
        public static final C6554d f16340a = new C6554d();
    }

    /* renamed from: a */
    public static C6554d m22347a() {
        return C6555a.f16340a;
    }

    /* renamed from: b */
    public static AbstractC6550a m22346b() {
        AbstractC6550a b = AbstractC6551b.m22351b();
        C6612d.m22238a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // javax.inject.Provider
    public AbstractC6550a get() {
        return m22346b();
    }
}
