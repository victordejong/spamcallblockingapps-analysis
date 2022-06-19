package kotlinx.coroutines.internal;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.internal.e */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/e.class */
public final class C1899e {

    /* renamed from: a */
    private static final Method f4637a;

    static {
        Method method;
        try {
            method = ScheduledThreadPoolExecutor.class.getMethod("setRemoveOnCancelPolicy", Boolean.TYPE);
        } catch (Throwable th) {
            method = null;
        }
        f4637a = method;
    }

    /* renamed from: a */
    public static final <E> Set<E> m2665a(int i) {
        Set<E> newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(i));
        C1694h.m3122a((Object) newSetFromMap, "Collections.newSetFromMa…ityHashMap(expectedSize))");
        return newSetFromMap;
    }

    /* renamed from: a */
    public static final boolean m2664a(Executor executor) {
        Method method;
        C1694h.m3117b(executor, "executor");
        Executor executor2 = executor;
        try {
            if (!(executor instanceof ScheduledExecutorService)) {
                executor2 = null;
            }
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) executor2;
            if (scheduledExecutorService == null || (method = f4637a) == null) {
                return false;
            }
            method.invoke(scheduledExecutorService, true);
            return true;
        } catch (Throwable th) {
            return true;
        }
    }
}
