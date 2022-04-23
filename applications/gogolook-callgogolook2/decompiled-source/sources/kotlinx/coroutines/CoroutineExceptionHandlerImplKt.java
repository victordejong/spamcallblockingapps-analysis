package kotlinx.coroutines;

import java.util.List;
import java.util.ServiceLoader;
import kotlin.Metadata;
import p626l.p630d0.C14927j;
import p626l.p630d0.C14930l;
import p626l.p634w.AbstractC15049g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\u001a\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH��\"\u0014\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m815d2 = {"handlers", "", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "handleCoroutineExceptionImpl", "", "context", "Lkotlin/coroutines/CoroutineContext;", "exception", "", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandlerImplKt.class */
public final class CoroutineExceptionHandlerImplKt {
    public static final List<CoroutineExceptionHandler> handlers = C14930l.m769c(C14927j.m778a(ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator()));

    public static final void handleCoroutineExceptionImpl(AbstractC15049g gVar, Throwable th) {
        for (CoroutineExceptionHandler coroutineExceptionHandler : handlers) {
            try {
                coroutineExceptionHandler.handleException(gVar, th);
            } catch (Throwable th2) {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, CoroutineExceptionHandlerKt.handlerException(th, th2));
            }
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }
}
