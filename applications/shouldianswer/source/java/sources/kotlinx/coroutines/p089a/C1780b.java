package kotlinx.coroutines.p089a;

import kotlin.C1768j;
import kotlin.C1771k;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.C1636h;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1706q;
import kotlinx.coroutines.AbstractC1778a;
import kotlinx.coroutines.C1863br;
import kotlinx.coroutines.C1945t;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.C1921s;
import kotlinx.coroutines.internal.C1925w;
/* renamed from: kotlinx.coroutines.a.b */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/a/b.class */
public final class C1780b {
    /* renamed from: a */
    public static final <T, R> Object m2968a(AbstractC1778a<? super T> abstractC1778a, R r, AbstractC1674m<? super R, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m) {
        C1945t c1945t;
        Object obj;
        C1694h.m3117b(abstractC1778a, "receiver$0");
        C1694h.m3117b(abstractC1674m, "block");
        abstractC1778a.m2971f();
        try {
            c1945t = ((AbstractC1674m) C1706q.m3093b(abstractC1674m, 2)).mo44a(r, abstractC1778a);
        } catch (Throwable th) {
            c1945t = new C1945t(th);
        }
        if (c1945t == C1622b.m3174a()) {
            obj = C1622b.m3174a();
        } else if (abstractC1778a.m2799a(c1945t, 4)) {
            Object p = abstractC1778a.m2751p();
            if (p instanceof C1945t) {
                C1945t c1945t2 = (C1945t) p;
                Throwable th2 = c1945t2.f4697a;
                throw C1921s.m2605a(abstractC1778a, c1945t2.f4697a);
            }
            obj = C1863br.m2739a(p);
        } else {
            obj = C1622b.m3174a();
        }
        return obj;
    }

    /* renamed from: a */
    public static final <R, T> void m2969a(AbstractC1674m<? super R, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m, R r, AbstractC1641c<? super T> abstractC1641c) {
        C1694h.m3117b(abstractC1674m, "receiver$0");
        C1694h.m3117b(abstractC1641c, "completion");
        AbstractC1641c m3154a = C1636h.m3154a(abstractC1641c);
        try {
            AbstractC1646f mo2555a = abstractC1641c.mo2555a();
            Object m2581a = C1925w.m2581a(mo2555a, null);
            Object mo44a = ((AbstractC1674m) C1706q.m3093b(abstractC1674m, 2)).mo44a(r, m3154a);
            C1925w.m2580b(mo2555a, m2581a);
            if (mo44a == C1622b.m3174a()) {
                return;
            }
            C1768j.C1769a c1769a = C1768j.f4443a;
            m3154a.mo2553a(C1768j.m2981e(mo44a));
        } catch (Throwable th) {
            C1768j.C1769a c1769a2 = C1768j.f4443a;
            m3154a.mo2553a(C1768j.m2981e(C1771k.m2978a(th)));
        }
    }

    /* renamed from: b */
    public static final <T, R> Object m2967b(AbstractC1778a<? super T> abstractC1778a, R r, AbstractC1674m<? super R, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m) {
        C1945t c1945t;
        C1945t c1945t2;
        C1694h.m3117b(abstractC1778a, "receiver$0");
        C1694h.m3117b(abstractC1674m, "block");
        abstractC1778a.m2971f();
        try {
            c1945t = ((AbstractC1674m) C1706q.m3093b(abstractC1674m, 2)).mo44a(r, abstractC1778a);
        } catch (Throwable th) {
            c1945t = new C1945t(th);
        }
        if (c1945t == C1622b.m3174a()) {
            c1945t2 = C1622b.m3174a();
        } else if (abstractC1778a.m2799a(c1945t, 4)) {
            Object p = abstractC1778a.m2751p();
            if (p instanceof C1945t) {
                C1945t c1945t3 = (C1945t) p;
                Throwable th2 = c1945t3.f4697a;
                if (!(th2 instanceof TimeoutCancellationException) || ((TimeoutCancellationException) th2).f4456a != abstractC1778a) {
                    throw C1921s.m2605a(abstractC1778a, c1945t3.f4697a);
                }
                if (c1945t instanceof C1945t) {
                    throw C1921s.m2605a(abstractC1778a, c1945t.f4697a);
                }
                c1945t2 = c1945t;
            } else {
                c1945t2 = C1863br.m2739a(p);
            }
        } else {
            c1945t2 = C1622b.m3174a();
        }
        return c1945t2;
    }
}
