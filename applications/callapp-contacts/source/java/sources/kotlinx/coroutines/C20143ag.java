package kotlinx.coroutines;

import java.util.List;
import java.util.ServiceLoader;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18335f;
import kotlin.p531g.C18381k;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\u001a\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH��\"\u0014\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"handlers", "", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "handleCoroutineExceptionImpl", "", "context", "Lkotlin/coroutines/CoroutineContext;", "exception", "", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ag */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ag.class */
public final class C20143ag {

    /* renamed from: a */
    private static final List<CoroutineExceptionHandler> f66545a = C18381k.m4012f(C18381k.m4030a(ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator()));

    /* renamed from: a */
    public static final void m1088a(AbstractC18335f abstractC18335f, Throwable th) {
        for (CoroutineExceptionHandler coroutineExceptionHandler : f66545a) {
            try {
                coroutineExceptionHandler.handleException(abstractC18335f, th);
            } catch (Throwable th2) {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, C20144ah.m1087a(th, th2));
            }
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }
}
