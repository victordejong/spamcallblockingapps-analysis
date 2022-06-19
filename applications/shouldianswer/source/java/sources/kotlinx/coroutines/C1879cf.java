package kotlinx.coroutines;

import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.cf */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/cf.class */
public final class C1879cf {

    /* renamed from: a */
    public static final C1879cf f4619a = new C1879cf();

    /* renamed from: b */
    private static final ThreadLocal<AbstractC1816ay> f4620b = new ThreadLocal<>();

    private C1879cf() {
    }

    /* renamed from: a */
    public final AbstractC1816ay m2713a() {
        AbstractC1816ay abstractC1816ay = f4620b.get();
        if (abstractC1816ay == null) {
            abstractC1816ay = C1840ba.m2815a();
            f4620b.set(abstractC1816ay);
        }
        return abstractC1816ay;
    }

    /* renamed from: a */
    public final void m2712a(AbstractC1816ay abstractC1816ay) {
        C1694h.m3117b(abstractC1816ay, "eventLoop");
        f4620b.set(abstractC1816ay);
    }

    /* renamed from: b */
    public final AbstractC1816ay m2711b() {
        return f4620b.get();
    }

    /* renamed from: c */
    public final void m2710c() {
        f4620b.set(null);
    }
}
