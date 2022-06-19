package kotlinx.coroutines.internal;

import kotlin.p075c.AbstractC1641c;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1778a;
/* renamed from: kotlinx.coroutines.internal.s */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/s.class */
public final class C1921s {
    /* renamed from: a */
    public static final Throwable m2605a(AbstractC1778a<?> abstractC1778a, Throwable th) {
        AbstractC1641c<T> abstractC1641c;
        C1694h.m3117b(abstractC1778a, "receiver$0");
        C1694h.m3117b(th, "exception");
        AbstractC1778a<?> abstractC1778a2 = abstractC1778a;
        if (!(abstractC1778a instanceof C1920r)) {
            abstractC1778a2 = null;
        }
        C1920r c1920r = (C1920r) abstractC1778a2;
        return (c1920r == null || (abstractC1641c = c1920r.f4668c) == 0) ? th : C1922t.m2598a(th, (AbstractC1641c<?>) abstractC1641c);
    }
}
