package kotlinx.coroutines;

import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
import kotlin.p084f.C1713d;
import kotlin.p087i.C1747g;
/* renamed from: kotlinx.coroutines.s */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/s.class */
public final class C1942s extends AbstractC1841bb {

    /* renamed from: b */
    public static final C1942s f4692b = new C1942s();

    /* renamed from: c */
    private static final int f4693c;

    /* renamed from: d */
    private static boolean f4694d;
    private static volatile Executor pool;

    /* renamed from: kotlinx.coroutines.s$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/s$a.class */
    public static final class ThreadFactoryC1943a implements ThreadFactory {

        /* renamed from: a */
        final /* synthetic */ AtomicInteger f4695a;

        ThreadFactoryC1943a(AtomicInteger atomicInteger) {
            this.f4695a = atomicInteger;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "CommonPool-worker-" + this.f4695a.incrementAndGet());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* renamed from: kotlinx.coroutines.s$b */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/s$b.class */
    public static final class RunnableC1944b implements Runnable {

        /* renamed from: a */
        public static final RunnableC1944b f4696a = new RunnableC1944b();

        RunnableC1944b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    static {
        String str;
        int i;
        C1942s c1942s = f4692b;
        try {
            str = System.getProperty("kotlinx.coroutines.default.parallelism");
        } catch (Throwable th) {
            str = null;
        }
        if (str != null) {
            Integer a = C1747g.m3045a(str);
            if (a == null || a.intValue() < 1) {
                throw new IllegalStateException(("Expected positive number in kotlinx.coroutines.default.parallelism, but has " + str).toString());
            }
            i = a.intValue();
        } else {
            i = -1;
        }
        f4693c = i;
    }

    private C1942s() {
    }

    /* renamed from: b */
    private final int m2523b() {
        Integer valueOf = Integer.valueOf(f4693c);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        return valueOf != null ? valueOf.intValue() : C1713d.m3076c(Runtime.getRuntime().availableProcessors() - 1, 1);
    }

    /* renamed from: c */
    private final ExecutorService m2522c() {
        Class<?> cls;
        ExecutorService executorService;
        ExecutorService executorService2;
        if (System.getSecurityManager() != null) {
            return m2521d();
        }
        try {
            cls = Class.forName("java.util.concurrent.ForkJoinPool");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return m2521d();
        }
        if (!f4694d && f4693c < 0) {
            try {
                Method method = cls.getMethod("commonPool", new Class[0]);
                ExecutorService invoke = method != null ? method.invoke(null, new Object[0]) : null;
                ExecutorService executorService3 = invoke;
                if (!(invoke instanceof ExecutorService)) {
                    executorService3 = null;
                }
                executorService2 = executorService3;
            } catch (Throwable th2) {
                executorService2 = null;
            }
            if (executorService2 != null) {
                if (!f4692b.m2524a(cls, executorService2)) {
                    executorService2 = null;
                }
                if (executorService2 != null) {
                    return executorService2;
                }
            }
        }
        try {
            Object newInstance = cls.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(f4692b.m2523b()));
            Object obj = newInstance;
            if (!(newInstance instanceof ExecutorService)) {
                obj = null;
            }
            executorService = (ExecutorService) obj;
        } catch (Throwable th3) {
            executorService = null;
        }
        return executorService != null ? executorService : m2521d();
    }

    /* renamed from: d */
    private final ExecutorService m2521d() {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(m2523b(), new ThreadFactoryC1943a(new AtomicInteger()));
        C1694h.m3122a((Object) newFixedThreadPool, "Executors.newFixedThread…Daemon = true }\n        }");
        return newFixedThreadPool;
    }

    /* renamed from: e */
    private final Executor m2520e() {
        ExecutorService executorService;
        synchronized (this) {
            executorService = pool;
            if (executorService == null) {
                ExecutorService m2522c = m2522c();
                pool = m2522c;
                executorService = m2522c;
            }
        }
        return executorService;
    }

    @Override // kotlinx.coroutines.AbstractC1841bb
    /* renamed from: a */
    public Executor mo2525a() {
        Executor executor = pool;
        if (executor == null) {
            executor = m2520e();
        }
        return executor;
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    /* renamed from: a */
    public void mo2512a(AbstractC1646f abstractC1646f, Runnable runnable) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(runnable, "block");
        try {
            Executor executor = pool;
            if (executor == null) {
                executor = m2520e();
            }
            executor.execute(C1884cj.m2695a().mo2701a(runnable));
        } catch (RejectedExecutionException e) {
            C1884cj.m2695a().mo2698c();
            RunnableC1790ah.f4472b.m2914a(runnable);
        }
    }

    /* renamed from: a */
    public final boolean m2524a(Class<?> cls, ExecutorService executorService) {
        Integer num;
        C1694h.m3117b(cls, "fjpClass");
        C1694h.m3117b(executorService, "executor");
        executorService.submit(RunnableC1944b.f4696a);
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
        if (num != null) {
            boolean z = true;
            if (num.intValue() < 1) {
                z = false;
            }
            return z;
        }
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool".toString());
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    public String toString() {
        return "CommonPool";
    }
}
