package kotlinx.coroutines.internal;

import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.internal.h */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/h.class */
public final class C1907h {

    /* renamed from: a */
    private static final Object f4644a = new C1923u("CONDITION_FALSE");

    /* renamed from: b */
    private static final Object f4645b = new C1923u("ALREADY_REMOVED");

    /* renamed from: c */
    private static final Object f4646c = new C1923u("LIST_EMPTY");

    /* renamed from: d */
    private static final Object f4647d = new C1923u("REMOVE_PREPARED");

    /* renamed from: a */
    public static final Object m2658a() {
        return f4644a;
    }

    /* renamed from: a */
    public static final C1908i m2657a(Object obj) {
        C1908i c1908i;
        C1694h.m3117b(obj, "receiver$0");
        C1919q c1919q = (C1919q) (!(obj instanceof C1919q) ? null : obj);
        return (c1919q == null || (c1908i = c1919q.f4667a) == null) ? (C1908i) obj : c1908i;
    }
}
