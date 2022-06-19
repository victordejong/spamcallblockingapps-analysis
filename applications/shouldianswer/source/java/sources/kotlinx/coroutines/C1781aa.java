package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.C1593a;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.aa */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/aa.class */
public final class C1781aa {
    /* renamed from: a */
    public static final Throwable m2966a(Throwable th, Throwable th2) {
        C1694h.m3117b(th, "originalException");
        C1694h.m3117b(th2, "thrownException");
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        C1593a.m3178a(runtimeException, th);
        return runtimeException;
    }

    /* renamed from: a */
    public static final void m2965a(AbstractC1646f abstractC1646f, Throwable th) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(th, "exception");
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) abstractC1646f.get(CoroutineExceptionHandler.f4453a);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.handleException(abstractC1646f, th);
            } else {
                C1951z.m2510a(abstractC1646f, th);
            }
        } catch (Throwable th2) {
            C1951z.m2510a(abstractC1646f, m2966a(th, th2));
        }
    }

    /* renamed from: a */
    public static final void m2964a(AbstractC1646f abstractC1646f, Throwable th, AbstractC1850bk abstractC1850bk) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(th, "exception");
        if (th instanceof CancellationException) {
            return;
        }
        AbstractC1850bk abstractC1850bk2 = (AbstractC1850bk) abstractC1646f.get(AbstractC1850bk.f4594b);
        if (abstractC1850bk2 != null && abstractC1850bk2 != abstractC1850bk && abstractC1850bk2.mo2763d(th)) {
            return;
        }
        m2965a(abstractC1646f, th);
    }

    /* renamed from: a */
    public static /* synthetic */ void m2963a(AbstractC1646f abstractC1646f, Throwable th, AbstractC1850bk abstractC1850bk, int i, Object obj) {
        if ((i & 4) != 0) {
            abstractC1850bk = null;
        }
        m2964a(abstractC1646f, th, abstractC1850bk);
    }
}
