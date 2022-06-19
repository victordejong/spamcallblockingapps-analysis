package kotlinx.coroutines;

import java.util.List;
import java.util.ServiceLoader;
import kotlin.p073a.C1600g;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.z */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/z.class */
public final class C1951z {

    /* renamed from: a */
    private static final List<CoroutineExceptionHandler> f4701a;

    static {
        ServiceLoader load = ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader());
        C1694h.m3122a((Object) load, "ServiceLoader.load(servi…serviceClass.classLoader)");
        f4701a = C1600g.m3192c(load);
    }

    /* renamed from: a */
    public static final void m2510a(AbstractC1646f abstractC1646f, Throwable th) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(th, "exception");
        for (CoroutineExceptionHandler coroutineExceptionHandler : f4701a) {
            try {
                coroutineExceptionHandler.handleException(abstractC1646f, th);
            } catch (Throwable th2) {
                Thread currentThread = Thread.currentThread();
                C1694h.m3122a((Object) currentThread, "currentThread");
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, C1781aa.m2966a(th, th2));
            }
        }
        Thread currentThread2 = Thread.currentThread();
        C1694h.m3122a((Object) currentThread2, "currentThread");
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }
}
