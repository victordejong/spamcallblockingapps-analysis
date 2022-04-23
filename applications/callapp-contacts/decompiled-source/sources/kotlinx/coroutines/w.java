package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.f.d;
import kotlin.h.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0011\u001a\u0004\u0018\u0001H\u0012\"\u0004\b��\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0014H\u0082\b¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\u001c\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\n\u0010\u0013\u001a\u00060\u001ej\u0002`\u001fH\u0016J\b\u0010 \u001a\u00020\u0006H\u0002J!\u0010!\u001a\u00020\u00102\n\u0010\"\u001a\u0006\u0012\u0002\b\u00030#2\u0006\u0010\u0005\u001a\u00020\u0019H��¢\u0006\u0002\b$J\r\u0010%\u001a\u00020\u0017H��¢\u0006\u0002\b&J\u0015\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)H��¢\u0006\u0002\b*J\b\u0010+\u001a\u00020\u0004H\u0016J\r\u0010\u000f\u001a\u00020\u0017H��¢\u0006\u0002\b,R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��¨\u0006-"}, d2 = {"Lkotlinx/coroutines/CommonPool;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "()V", "DEFAULT_PARALLELISM_PROPERTY_NAME", "", "executor", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "parallelism", "", "getParallelism", "()I", "pool", "requestedParallelism", "usePrivatePool", "", "Try", "T", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", EventConstants.CLOSE, "", "createPlainPool", "Ljava/util/concurrent/ExecutorService;", "createPool", "dispatch", "context", "Lkotlin/coroutines/CoroutineContext;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "getOrCreatePoolSync", "isGoodCommonPool", "fjpClass", "Ljava/lang/Class;", "isGoodCommonPool$kotlinx_coroutines_core", "restore", "restore$kotlinx_coroutines_core", "shutdown", "timeout", "", "shutdown$kotlinx_coroutines_core", "toString", "usePrivatePool$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/w.class */
public final class w extends bk {

    /* renamed from: b  reason: collision with root package name */
    public static final w f38860b = new w();
    private static final int e;
    private static boolean f;
    private static volatile Executor pool;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Ljava/lang/Thread;", "kotlin.jvm.PlatformType", "it", "Ljava/lang/Runnable;", "newThread"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/w$a.class */
    public static final class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicInteger f38861a;

        a(AtomicInteger atomicInteger) {
            this.f38861a = atomicInteger;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "CommonPool-worker-" + this.f38861a.incrementAndGet());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/w$b.class */
    public static final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public static final b f38862a = new b();

        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    static {
        String str;
        int i;
        try {
            str = System.getProperty("kotlinx.coroutines.default.parallelism");
        } catch (Throwable th) {
            str = null;
        }
        if (str == null) {
            i = -1;
        } else {
            Integer e2 = p.e(str);
            if (e2 == null || e2.intValue() <= 0) {
                throw new IllegalStateException("Expected positive number in kotlinx.coroutines.default.parallelism, but has ".concat(String.valueOf(str)).toString());
            }
            i = e2.intValue();
        }
        e = i;
    }

    private w() {
    }

    private static boolean a(Class<?> cls, ExecutorService executorService) {
        executorService.submit(b.f38862a);
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
        return num != null && num.intValue() > 0;
    }

    private static int c() {
        Integer valueOf = Integer.valueOf(e);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        return valueOf != null ? valueOf.intValue() : d.c(Runtime.getRuntime().availableProcessors() - 1, 1);
    }

    private final ExecutorService d() {
        Class<?> cls;
        ExecutorService executorService;
        if (System.getSecurityManager() != null) {
            return e();
        }
        ExecutorService executorService2 = null;
        try {
            cls = Class.forName("java.util.concurrent.ForkJoinPool");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return e();
        }
        if (!f && e < 0) {
            try {
                Object invoke = cls.getMethod("commonPool", new Class[0]).invoke(null, new Object[0]);
                Object obj = invoke;
                if (!(invoke instanceof ExecutorService)) {
                    obj = null;
                }
                executorService = (ExecutorService) obj;
            } catch (Throwable th2) {
                executorService = null;
            }
            if (executorService != null) {
                if (!a(cls, executorService)) {
                    executorService = null;
                }
                if (executorService != null) {
                    return executorService;
                }
            }
        }
        try {
            Object newInstance = cls.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(c()));
            Object obj2 = newInstance;
            if (!(newInstance instanceof ExecutorService)) {
                obj2 = null;
            }
            executorService2 = (ExecutorService) obj2;
        } catch (Throwable th3) {
        }
        return executorService2 != null ? executorService2 : e();
    }

    private static ExecutorService e() {
        return Executors.newFixedThreadPool(c(), new a(new AtomicInteger()));
    }

    private final Executor f() {
        ExecutorService executorService;
        synchronized (this) {
            Executor executor = pool;
            executorService = executor;
            if (executor == null) {
                ExecutorService d2 = d();
                pool = d2;
                executorService = d2;
            }
        }
        return executorService;
    }

    @Override // kotlinx.coroutines.bk
    public final Executor a() {
        Executor executor = pool;
        Executor executor2 = executor;
        if (executor == null) {
            executor2 = f();
        }
        return executor2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
        if (r0 == null) goto L_0x0027;
     */
    @Override // kotlinx.coroutines.af
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(kotlin.c.f r4, java.lang.Runnable r5) {
        /*
            r3 = this;
            java.util.concurrent.Executor r0 = kotlinx.coroutines.w.pool     // Catch: RejectedExecutionException -> 0x0031
            r6 = r0
            r0 = r6
            r4 = r0
            r0 = r6
            if (r0 != 0) goto L_0x000f
            r0 = r3
            java.util.concurrent.Executor r0 = r0.f()     // Catch: RejectedExecutionException -> 0x0031
            r4 = r0
        L_0x000f:
            kotlinx.coroutines.co r0 = kotlinx.coroutines.cp.f38786a     // Catch: RejectedExecutionException -> 0x0031, RejectedExecutionException -> 0x0031
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0027
            r0 = r6
            java.lang.Runnable r0 = r0.b()     // Catch: RejectedExecutionException -> 0x0031
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0029
        L_0x0027:
            r0 = r5
            r6 = r0
        L_0x0029:
            r0 = r4
            r1 = r6
            r0.execute(r1)     // Catch: RejectedExecutionException -> 0x0031
            return
        L_0x0031:
            r4 = move-exception
            kotlinx.coroutines.aq r0 = kotlinx.coroutines.aq.f38690b
            r1 = r5
            r0.a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.w.a(kotlin.c.f, java.lang.Runnable):void");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool".toString());
    }

    @Override // kotlinx.coroutines.af
    public final String toString() {
        return "CommonPool";
    }
}
