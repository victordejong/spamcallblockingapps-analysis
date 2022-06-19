package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.p530f.C18363d;
import kotlin.p532h.C18425p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0011\u001a\u0004\u0018\u0001H\u0012\"\u0004\b��\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0014H\u0082\b¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\u001c\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\n\u0010\u0013\u001a\u00060\u001ej\u0002`\u001fH\u0016J\b\u0010 \u001a\u00020\u0006H\u0002J!\u0010!\u001a\u00020\u00102\n\u0010\"\u001a\u0006\u0012\u0002\b\u00030#2\u0006\u0010\u0005\u001a\u00020\u0019H��¢\u0006\u0002\b$J\r\u0010%\u001a\u00020\u0017H��¢\u0006\u0002\b&J\u0015\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)H��¢\u0006\u0002\b*J\b\u0010+\u001a\u00020\u0004H\u0016J\r\u0010\u000f\u001a\u00020\u0017H��¢\u0006\u0002\b,R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��¨\u0006-"}, m4298d2 = {"Lkotlinx/coroutines/CommonPool;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "()V", "DEFAULT_PARALLELISM_PROPERTY_NAME", "", "executor", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "parallelism", "", "getParallelism", "()I", "pool", "requestedParallelism", "usePrivatePool", "", "Try", "T", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", EventConstants.CLOSE, "", "createPlainPool", "Ljava/util/concurrent/ExecutorService;", "createPool", "dispatch", "context", "Lkotlin/coroutines/CoroutineContext;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "getOrCreatePoolSync", "isGoodCommonPool", "fjpClass", "Ljava/lang/Class;", "isGoodCommonPool$kotlinx_coroutines_core", "restore", "restore$kotlinx_coroutines_core", "shutdown", "timeout", "", "shutdown$kotlinx_coroutines_core", "toString", "usePrivatePool$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.w */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/w.class */
public final class C20317w extends AbstractC20205bk {

    /* renamed from: b */
    public static final C20317w f66791b = new C20317w();

    /* renamed from: e */
    private static final int f66792e;

    /* renamed from: f */
    private static boolean f66793f;
    private static volatile Executor pool;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "Ljava/lang/Thread;", "kotlin.jvm.PlatformType", "it", "Ljava/lang/Runnable;", "newThread"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.w$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/w$a.class */
    public static final class ThreadFactoryC20318a implements ThreadFactory {

        /* renamed from: a */
        final /* synthetic */ AtomicInteger f66794a;

        ThreadFactoryC20318a(AtomicInteger atomicInteger) {
            this.f66794a = atomicInteger;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "CommonPool-worker-" + this.f66794a.incrementAndGet());
            thread.setDaemon(true);
            return thread;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.w$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/w$b.class */
    public static final class RunnableC20319b implements Runnable {

        /* renamed from: a */
        public static final RunnableC20319b f66795a = new RunnableC20319b();

        RunnableC20319b() {
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
            Integer e = C18425p.m3968e(str);
            if (e == null || e.intValue() <= 0) {
                throw new IllegalStateException("Expected positive number in kotlinx.coroutines.default.parallelism, but has ".concat(String.valueOf(str)).toString());
            }
            i = e.intValue();
        }
        f66792e = i;
    }

    private C20317w() {
    }

    /* renamed from: a */
    private static boolean m764a(Class<?> cls, ExecutorService executorService) {
        Integer num;
        executorService.submit(RunnableC20319b.f66795a);
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
        return num != null && num.intValue() > 0;
    }

    /* renamed from: c */
    private static int m762c() {
        Integer valueOf = Integer.valueOf(f66792e);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        return valueOf != null ? valueOf.intValue() : C18363d.m4051c(Runtime.getRuntime().availableProcessors() - 1, 1);
    }

    /* renamed from: d */
    private final ExecutorService m761d() {
        Class<?> cls;
        ExecutorService executorService;
        ExecutorService executorService2;
        if (System.getSecurityManager() != null) {
            return m760e();
        }
        try {
            cls = Class.forName("java.util.concurrent.ForkJoinPool");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return m760e();
        }
        if (!f66793f && f66792e < 0) {
            try {
                Object invoke = cls.getMethod("commonPool", new Class[0]).invoke(null, new Object[0]);
                Object obj = invoke;
                if (!(invoke instanceof ExecutorService)) {
                    obj = null;
                }
                executorService2 = (ExecutorService) obj;
            } catch (Throwable th2) {
                executorService2 = null;
            }
            if (executorService2 != null) {
                if (!m764a(cls, executorService2)) {
                    executorService2 = null;
                }
                if (executorService2 != null) {
                    return executorService2;
                }
            }
        }
        try {
            Object newInstance = cls.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(m762c()));
            Object obj2 = newInstance;
            if (!(newInstance instanceof ExecutorService)) {
                obj2 = null;
            }
            executorService = (ExecutorService) obj2;
        } catch (Throwable th3) {
            executorService = null;
        }
        return executorService != null ? executorService : m760e();
    }

    /* renamed from: e */
    private static ExecutorService m760e() {
        return Executors.newFixedThreadPool(m762c(), new ThreadFactoryC20318a(new AtomicInteger()));
    }

    /* renamed from: f */
    private final Executor m759f() {
        ExecutorService executorService;
        synchronized (this) {
            Executor executor = pool;
            executorService = executor;
            if (executor == null) {
                ExecutorService m761d = m761d();
                pool = m761d;
                executorService = m761d;
            }
        }
        return executorService;
    }

    @Override // kotlinx.coroutines.AbstractC20205bk
    /* renamed from: a */
    public final Executor mo765a() {
        Executor executor = pool;
        Executor executor2 = executor;
        if (executor == null) {
            executor2 = m759f();
        }
        return executor2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
        if (r0 == null) goto L12;
     */
    @Override // kotlinx.coroutines.AbstractC20140af
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo763a(kotlin.p521c.AbstractC18335f r4, java.lang.Runnable r5) {
        /*
            r3 = this;
            java.util.concurrent.Executor r0 = kotlinx.coroutines.C20317w.pool     // Catch: java.util.concurrent.RejectedExecutionException -> L31
            r6 = r0
            r0 = r6
            r4 = r0
            r0 = r6
            if (r0 != 0) goto Lf
            r0 = r3
            java.util.concurrent.Executor r0 = r0.m759f()     // Catch: java.util.concurrent.RejectedExecutionException -> L31
            r4 = r0
        Lf:
            kotlinx.coroutines.co r0 = kotlinx.coroutines.C20247cp.f66702a     // Catch: java.util.concurrent.RejectedExecutionException -> L31 java.util.concurrent.RejectedExecutionException -> L31
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L27
            r0 = r6
            java.lang.Runnable r0 = r0.m908b()     // Catch: java.util.concurrent.RejectedExecutionException -> L31
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L29
        L27:
            r0 = r5
            r6 = r0
        L29:
            r0 = r4
            r1 = r6
            r0.execute(r1)     // Catch: java.util.concurrent.RejectedExecutionException -> L31
            return
        L31:
            r4 = move-exception
            kotlinx.coroutines.aq r0 = kotlinx.coroutines.RunnableC20161aq.f66567b
            r1 = r5
            r0.m1004a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C20317w.mo763a(kotlin.c.f, java.lang.Runnable):void");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool".toString());
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    public final String toString() {
        return "CommonPool";
    }
}
