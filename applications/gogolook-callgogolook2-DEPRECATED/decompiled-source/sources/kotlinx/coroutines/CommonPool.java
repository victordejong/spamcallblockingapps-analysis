package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import p626l.p628b0.C14896i;
import p626l.p631e0.C14965v;
import p626l.p641z.p642c.AbstractC15107a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0011\u001a\u0004\u0018\u0001H\u0012\"\u0004\b��\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0014H\u0082\b¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\u001c\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\n\u0010\u0013\u001a\u00060\u001ej\u0002`\u001fH\u0016J\b\u0010 \u001a\u00020\u0006H\u0002J!\u0010!\u001a\u00020\u00102\n\u0010\"\u001a\u0006\u0012\u0002\b\u00030#2\u0006\u0010\u0005\u001a\u00020\u0019H��¢\u0006\u0002\b$J\r\u0010%\u001a\u00020\u0017H��¢\u0006\u0002\b&J\u0015\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)H��¢\u0006\u0002\b*J\b\u0010+\u001a\u00020\u0004H\u0016J\r\u0010\u000f\u001a\u00020\u0017H��¢\u0006\u0002\b,R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��¨\u0006-"}, m815d2 = {"Lkotlinx/coroutines/CommonPool;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "()V", "DEFAULT_PARALLELISM_PROPERTY_NAME", "", "executor", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "parallelism", "", "getParallelism", "()I", "pool", "requestedParallelism", "usePrivatePool", "", "Try", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", MraidParser.MRAID_COMMAND_CLOSE, "", "createPlainPool", "Ljava/util/concurrent/ExecutorService;", "createPool", "dispatch", "context", "Lkotlin/coroutines/CoroutineContext;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "getOrCreatePoolSync", "isGoodCommonPool", "fjpClass", "Ljava/lang/Class;", "isGoodCommonPool$kotlinx_coroutines_core", "restore", "restore$kotlinx_coroutines_core", "shutdown", "timeout", "", "shutdown$kotlinx_coroutines_core", "toString", "usePrivatePool$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CommonPool.class */
public final class CommonPool extends ExecutorCoroutineDispatcher {
    public static final String DEFAULT_PARALLELISM_PROPERTY_NAME = "kotlinx.coroutines.default.parallelism";
    public static final CommonPool INSTANCE = new CommonPool();
    public static volatile Executor pool;
    public static final int requestedParallelism;
    public static boolean usePrivatePool;

    static {
        String str;
        int i;
        try {
            str = System.getProperty(DEFAULT_PARALLELISM_PROPERTY_NAME);
        } catch (Throwable th) {
            str = null;
        }
        if (str != null) {
            Integer e = C14965v.m726e(str);
            if (e == null || e.intValue() < 1) {
                throw new IllegalStateException(("Expected positive number in kotlinx.coroutines.default.parallelism, but has " + str).toString());
            }
            i = e.intValue();
        } else {
            i = -1;
        }
        requestedParallelism = i;
    }

    private final <T> T Try(AbstractC15107a<? extends T> aVar) {
        T t;
        try {
            t = (T) aVar.invoke();
        } catch (Throwable th) {
            t = null;
        }
        return t;
    }

    private final ExecutorService createPlainPool() {
        final AtomicInteger atomicInteger = new AtomicInteger();
        return Executors.newFixedThreadPool(getParallelism(), new ThreadFactory() { // from class: kotlinx.coroutines.CommonPool$createPlainPool$1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "CommonPool-worker-" + atomicInteger.incrementAndGet());
                thread.setDaemon(true);
                return thread;
            }
        });
    }

    private final ExecutorService createPool() {
        Class<?> cls;
        ExecutorService executorService;
        ExecutorService executorService2;
        if (System.getSecurityManager() != null) {
            return createPlainPool();
        }
        try {
            cls = Class.forName("java.util.concurrent.ForkJoinPool");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return createPlainPool();
        }
        if (!usePrivatePool && requestedParallelism < 0) {
            try {
                Method method = cls.getMethod("commonPool", new Class[0]);
                Object invoke = method != null ? method.invoke(null, new Object[0]) : null;
                Object obj = invoke;
                if (!(invoke instanceof ExecutorService)) {
                    obj = null;
                }
                executorService2 = (ExecutorService) obj;
            } catch (Throwable th2) {
                executorService2 = null;
            }
            if (executorService2 != null) {
                if (!INSTANCE.isGoodCommonPool$kotlinx_coroutines_core(cls, executorService2)) {
                    executorService2 = null;
                }
                if (executorService2 != null) {
                    return executorService2;
                }
            }
        }
        try {
            Object newInstance = cls.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(INSTANCE.getParallelism()));
            Object obj2 = newInstance;
            if (!(newInstance instanceof ExecutorService)) {
                obj2 = null;
            }
            executorService = (ExecutorService) obj2;
        } catch (Throwable th3) {
            executorService = null;
        }
        return executorService != null ? executorService : createPlainPool();
    }

    private final Executor getOrCreatePoolSync() {
        Executor executor;
        synchronized (this) {
            executor = pool;
            if (executor == null) {
                executor = createPool();
                pool = executor;
            }
        }
        return executor;
    }

    private final int getParallelism() {
        Integer valueOf = Integer.valueOf(requestedParallelism);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        return valueOf != null ? valueOf.intValue() : C14896i.m796a(Runtime.getRuntime().availableProcessors() - 1, 1);
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r6 != null) goto L_0x0029;
     */
    @Override // kotlinx.coroutines.CoroutineDispatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dispatch(p626l.p634w.AbstractC15049g r4, java.lang.Runnable r5) {
        /*
            r3 = this;
            java.util.concurrent.Executor r0 = kotlinx.coroutines.CommonPool.pool     // Catch: RejectedExecutionException -> 0x0033
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x000b
            goto L_0x0010
        L_0x000b:
            r0 = r3
            java.util.concurrent.Executor r0 = r0.getOrCreatePoolSync()     // Catch: RejectedExecutionException -> 0x0033
            r4 = r0
        L_0x0010:
            kotlinx.coroutines.TimeSource r0 = kotlinx.coroutines.TimeSourceKt.getTimeSource()     // Catch: RejectedExecutionException -> 0x0033, RejectedExecutionException -> 0x0033
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0027
            r0 = r6
            r1 = r5
            java.lang.Runnable r0 = r0.wrapTask(r1)     // Catch: RejectedExecutionException -> 0x0033
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r0 = r5
            r6 = r0
        L_0x0029:
            r0 = r4
            r1 = r6
            r0.execute(r1)     // Catch: RejectedExecutionException -> 0x0033
            goto L_0x0049
        L_0x0033:
            r4 = move-exception
            kotlinx.coroutines.TimeSource r0 = kotlinx.coroutines.TimeSourceKt.getTimeSource()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0042
            r0 = r4
            r0.unTrackTask()
        L_0x0042:
            kotlinx.coroutines.DefaultExecutor r0 = kotlinx.coroutines.DefaultExecutor.INSTANCE
            r1 = r5
            r0.enqueue(r1)
        L_0x0049:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CommonPool.dispatch(l.w.g, java.lang.Runnable):void");
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    public Executor getExecutor() {
        Executor executor = pool;
        if (executor == null) {
            executor = getOrCreatePoolSync();
        }
        return executor;
    }

    public final boolean isGoodCommonPool$kotlinx_coroutines_core(Class<?> cls, ExecutorService executorService) {
        Integer num;
        executorService.submit(CommonPool$isGoodCommonPool$1.INSTANCE);
        try {
            Object invoke = cls.getMethod("getPoolSize", new Class[0]).invoke(executorService, new Object[0]);
            Integer num2 = invoke;
            if (!(invoke instanceof Integer)) {
                num2 = null;
            }
            num = num2;
        } catch (Throwable th) {
            num = null;
        }
        if (num == null) {
            return false;
        }
        boolean z = true;
        if (num.intValue() < 1) {
            z = false;
        }
        return z;
    }

    public final void restore$kotlinx_coroutines_core() {
        synchronized (this) {
            shutdown$kotlinx_coroutines_core(0L);
            usePrivatePool = false;
            pool = null;
        }
    }

    public final void shutdown$kotlinx_coroutines_core(long j) {
        synchronized (this) {
            Executor executor = pool;
            Executor executor2 = executor;
            if (!(executor instanceof ExecutorService)) {
                executor2 = null;
            }
            ExecutorService executorService = (ExecutorService) executor2;
            if (executorService != null) {
                executorService.shutdown();
                if (j > 0) {
                    executorService.awaitTermination(j, TimeUnit.MILLISECONDS);
                }
                for (Runnable runnable : executorService.shutdownNow()) {
                    DefaultExecutor.INSTANCE.enqueue(runnable);
                }
            }
            pool = CommonPool$shutdown$2.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        return "CommonPool";
    }

    public final void usePrivatePool$kotlinx_coroutines_core() {
        synchronized (this) {
            shutdown$kotlinx_coroutines_core(0L);
            usePrivatePool = true;
            pool = null;
        }
    }
}
