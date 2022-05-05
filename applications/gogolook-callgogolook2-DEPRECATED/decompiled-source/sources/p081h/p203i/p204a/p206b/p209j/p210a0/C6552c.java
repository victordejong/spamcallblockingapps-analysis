package p081h.p203i.p204a.p206b.p209j.p210a0;

import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.C6612d;
/* renamed from: h.i.a.b.j.a0.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/a0/c.class */
public final class C6552c implements AbstractC6610b<AbstractC6550a> {

    /* renamed from: h.i.a.b.j.a0.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/a0/c$a.class */
    public static final class C6553a {

        /* renamed from: a */
        public static final C6552c f16339a = new C6552c();
    }

    /* renamed from: a */
    public static C6552c m22350a() {
        return C6553a.f16339a;
    }

    /* renamed from: b */
    public static AbstractC6550a m22349b() {
        AbstractC6550a a = AbstractC6551b.m22352a();
        C6612d.m22238a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // javax.inject.Provider
    public AbstractC6550a get() {
        return m22349b();
    }
}
