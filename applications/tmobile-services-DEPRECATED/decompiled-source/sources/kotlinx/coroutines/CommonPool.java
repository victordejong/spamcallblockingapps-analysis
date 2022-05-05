package kotlinx.coroutines;

import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\n\bÀ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b6\u0010\tJ&\u0010\u0005\u001a\u0004\u0018\u00018��\"\u0004\b��\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0082\b¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ#\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\n\u0010\u0004\u001a\u00060\u0010j\u0002`\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J#\u0010\u001d\u001a\u00020\u001a2\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u00172\u0006\u0010\u0019\u001a\u00020\nH��¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u0007H��¢\u0006\u0004\b\u001e\u0010\tJ\u0017\u0010$\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 H��¢\u0006\u0004\b\"\u0010#J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020\u0007H��¢\u0006\u0004\b(\u0010\tR\u0016\u0010*\u001a\u00020%8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010\u0019\u001a\u00020\u00148V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010\u0016R\u0016\u00100\u001a\u00020-8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0018\u00101\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00103\u001a\u00020-8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u0010)\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u00105¨\u00067"}, d2 = {"Lkotlinx/coroutines/CommonPool;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "T", "Lkotlin/Function0;", "block", "Try", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "", "close", "()V", "Ljava/util/concurrent/ExecutorService;", "createPlainPool", "()Ljava/util/concurrent/ExecutorService;", "createPool", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "Ljava/util/concurrent/Executor;", "getOrCreatePoolSync", "()Ljava/util/concurrent/Executor;", "Ljava/lang/Class;", "fjpClass", "executor", "", "isGoodCommonPool$kotlinx_coroutines_core", "(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;)Z", "isGoodCommonPool", "restore$kotlinx_coroutines_core", "restore", "", "timeout", "shutdown$kotlinx_coroutines_core", "(J)V", "shutdown", "", "toString", "()Ljava/lang/String;", "usePrivatePool$kotlinx_coroutines_core", "usePrivatePool", "DEFAULT_PARALLELISM_PROPERTY_NAME", "Ljava/lang/String;", "getExecutor", "", "getParallelism", "()I", "parallelism", "pool", "Ljava/util/concurrent/Executor;", "requestedParallelism", "I", "Z", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CommonPool.class */
public final class CommonPool extends ExecutorCoroutineDispatcher {

    /* renamed from: g */
    private static final int f21117g;

    /* renamed from: h */
    private static boolean f21118h;

    /* renamed from: i */
    public static final CommonPool f21119i = new CommonPool();
    private static volatile Executor pool;

    static {
        String str;
        int i;
        Integer i2;
        try {
            str = System.getProperty("kotlinx.coroutines.default.parallelism");
        } catch (Throwable th) {
            str = null;
        }
        if (str != null) {
            i2 = StringsKt__StringNumberConversionsKt.m1497i(str);
            if (i2 == null || i2.intValue() < 1) {
                throw new IllegalStateException(("Expected positive number in kotlinx.coroutines.default.parallelism, but has " + str).toString());
            }
            i = i2.intValue();
        } else {
            i = -1;
        }
        f21117g = i;
    }

    private CommonPool() {
    }

    /* renamed from: X */
    private final ExecutorService m1336X() {
        final AtomicInteger atomicInteger = new AtomicInteger();
        return Executors.newFixedThreadPool(m1333b0(), new ThreadFactory() { // from class: kotlinx.coroutines.CommonPool$createPlainPool$1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "CommonPool-worker-" + atomicInteger.incrementAndGet());
                thread.setDaemon(true);
                return thread;
            }
        });
    }

    /* renamed from: Y */
    private final ExecutorService m1335Y() {
        Class<?> cls;
        ExecutorService executorService;
        if (System.getSecurityManager() != null) {
            return m1336X();
        }
        ExecutorService executorService2 = null;
        try {
            cls = Class.forName("java.util.concurrent.ForkJoinPool");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return m1336X();
        }
        if (!f21118h && f21117g < 0) {
            try {
                Method method = cls.getMethod("commonPool", new Class[0]);
                Object invoke = method != null ? method.invoke(null, new Object[0]) : null;
                Object obj = invoke;
                if (!(invoke instanceof ExecutorService)) {
                    obj = null;
                }
                executorService = (ExecutorService) obj;
            } catch (Throwable th2) {
                executorService = null;
            }
            if (executorService != null) {
                if (!f21119i.m1332d0(cls, executorService)) {
                    executorService = null;
                }
                if (executorService != null) {
                    return executorService;
                }
            }
        }
        try {
            Object newInstance = cls.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(f21119i.m1333b0()));
            Object obj2 = newInstance;
            if (!(newInstance instanceof ExecutorService)) {
                obj2 = null;
            }
            executorService2 = (ExecutorService) obj2;
        } catch (Throwable th3) {
        }
        return executorService2 != null ? executorService2 : m1336X();
    }

    /* renamed from: Z */
    private final Executor m1334Z() {
        Executor executor;
        synchronized (this) {
            executor = pool;
            if (executor == null) {
                executor = m1335Y();
                pool = executor;
            }
        }
        return executor;
    }

    /* renamed from: b0 */
    private final int m1333b0() {
        Integer valueOf = Integer.valueOf(f21117g);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        return valueOf != null ? valueOf.intValue() : RangesKt___RangesKt.m1713b(Runtime.getRuntime().availableProcessors() - 1, 1);
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    /* renamed from: W */
    public Executor mo348W() {
        Executor executor = pool;
        if (executor == null) {
            executor = m1334Z();
        }
        return executor;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool".toString());
    }

    /* renamed from: d0 */
    public final boolean m1332d0(@NotNull Class<?> cls, @NotNull ExecutorService executorService) {
        executorService.submit(CommonPool$isGoodCommonPool$1.f21121f);
        Integer num = null;
        try {
            Object invoke = cls.getMethod("getPoolSize", new Class[0]).invoke(executorService, new Object[0]);
            Integer num2 = invoke;
            if (!(invoke instanceof Integer)) {
                num2 = null;
            }
            num = num2;
        } catch (Throwable th) {
        }
        boolean z = false;
        if (num != null) {
            z = false;
            if (num.intValue() >= 1) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r6 != null) goto L_0x0029;
     */
    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo241t(@org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r4, @org.jetbrains.annotations.NotNull java.lang.Runnable r5) {
        /*
            r3 = this;
            java.util.concurrent.Executor r0 = kotlinx.coroutines.CommonPool.pool     // Catch: RejectedExecutionException -> 0x0033
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x000b
            goto L_0x0010
        L_0x000b:
            r0 = r3
            java.util.concurrent.Executor r0 = r0.m1334Z()     // Catch: RejectedExecutionException -> 0x0033
            r4 = r0
        L_0x0010:
            kotlinx.coroutines.TimeSource r0 = kotlinx.coroutines.TimeSourceKt.m1093a()     // Catch: RejectedExecutionException -> 0x0033, RejectedExecutionException -> 0x0033
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0027
            r0 = r6
            r1 = r5
            java.lang.Runnable r0 = r0.m1100a(r1)     // Catch: RejectedExecutionException -> 0x0033
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
            kotlinx.coroutines.TimeSource r0 = kotlinx.coroutines.TimeSourceKt.m1093a()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0042
            r0 = r4
            r0.m1098c()
        L_0x0042:
            kotlinx.coroutines.DefaultExecutor r0 = kotlinx.coroutines.DefaultExecutor.f21150m
            r1 = r5
            r0.m1243z0(r1)
        L_0x0049:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CommonPool.mo241t(kotlin.coroutines.CoroutineContext, java.lang.Runnable):void");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return "CommonPool";
    }
}
