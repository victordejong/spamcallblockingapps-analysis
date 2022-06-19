package kotlinx.coroutines;

import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.C1636h;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.p089a.C1780b;
/* renamed from: kotlinx.coroutines.cl */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/cl.class */
public final class C1886cl {
    /* renamed from: a */
    public static final <T> Object m2693a(long j, AbstractC1674m<? super AbstractC1786ad, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m, AbstractC1641c<? super T> abstractC1641c) {
        if (j > 0) {
            Object m2690b = m2690b(new RunnableC1885ck(j, abstractC1641c), abstractC1674m);
            if (m2690b == C1622b.m3174a()) {
                C1636h.m3152c(abstractC1641c);
            }
            return m2690b;
        }
        throw new TimeoutCancellationException("Timed out immediately");
    }

    /* renamed from: a */
    public static final TimeoutCancellationException m2692a(long j, AbstractC1850bk abstractC1850bk) {
        C1694h.m3117b(abstractC1850bk, "coroutine");
        return new TimeoutCancellationException("Timed out waiting for " + j + " ms", abstractC1850bk);
    }

    /* renamed from: b */
    public static final <U, T extends U> Object m2690b(RunnableC1885ck<U, ? super T> runnableC1885ck, AbstractC1674m<? super AbstractC1786ad, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m) {
        C1854bm.m2803a(runnableC1885ck, C1798an.m2944a(runnableC1885ck.f4628d.mo2555a()).mo2612a(runnableC1885ck.f4627c, runnableC1885ck));
        return C1780b.m2967b(runnableC1885ck, runnableC1885ck, abstractC1674m);
    }
}
