package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.C6612d;
/* renamed from: h.i.a.b.j.y.k.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/f.class */
public final class C6668f implements AbstractC6610b<String> {

    /* renamed from: h.i.a.b.j.y.k.f$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/f$a.class */
    public static final class C6669a {

        /* renamed from: a */
        public static final C6668f f16543a = new C6668f();
    }

    /* renamed from: a */
    public static C6668f m22106a() {
        return C6669a.f16543a;
    }

    /* renamed from: b */
    public static String m22105b() {
        String a = AbstractC6666e.m22110a();
        C6612d.m22238a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // javax.inject.Provider
    public String get() {
        return m22105b();
    }
}
