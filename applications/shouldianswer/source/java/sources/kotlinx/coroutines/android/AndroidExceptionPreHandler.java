package kotlinx.coroutines.android;

import java.lang.Thread;
import java.lang.reflect.Method;
import kotlin.p075c.AbstractC1620a;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.CoroutineExceptionHandler;
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/android/AndroidExceptionPreHandler.class */
public final class AndroidExceptionPreHandler extends AbstractC1620a implements CoroutineExceptionHandler {
    public AndroidExceptionPreHandler() {
        super(CoroutineExceptionHandler.f4453a);
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public void handleException(AbstractC1646f abstractC1646f, Throwable th) {
        Method method;
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(th, "exception");
        method = C1799a.f4480a;
        Thread.UncaughtExceptionHandler invoke = method != null ? method.invoke(null, new Object[0]) : null;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = invoke;
        if (!(invoke instanceof Thread.UncaughtExceptionHandler)) {
            uncaughtExceptionHandler = null;
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = uncaughtExceptionHandler;
        if (uncaughtExceptionHandler2 != null) {
            uncaughtExceptionHandler2.uncaughtException(Thread.currentThread(), th);
        }
    }
}
