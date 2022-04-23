package p092e.p096e.p097a.p102h0;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: e.e.a.h0.b */
/* loaded from: classes2-dex2jar.jar:e/e/a/h0/b.class */
public class C3054b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e.e.a.h0.b$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/h0/b$a.class */
    public static class ThreadFactoryC3055a implements ThreadFactory {

        /* renamed from: a */
        private final String f12678a;

        /* renamed from: c */
        private final AtomicInteger f12680c = new AtomicInteger(1);

        /* renamed from: b */
        private final ThreadGroup f12679b = Thread.currentThread().getThreadGroup();

        static {
            new AtomicInteger(1);
        }

        ThreadFactoryC3055a(String str) {
            this.f12678a = C3066f.m399D(str);
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f12679b;
            Thread thread = new Thread(threadGroup, runnable, this.f12678a + this.f12680c.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    /* renamed from: a */
    public static ThreadPoolExecutor m429a(int i, String str) {
        return m428b(i, new LinkedBlockingQueue(), str);
    }

    /* renamed from: b */
    public static ThreadPoolExecutor m428b(int i, LinkedBlockingQueue<Runnable> linkedBlockingQueue, String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 15L, TimeUnit.SECONDS, linkedBlockingQueue, new ThreadFactoryC3055a(str));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* renamed from: c */
    public static ThreadPoolExecutor m427c(String str) {
        return new ThreadPoolExecutor(0, Integer.MAX_VALUE, 15L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactoryC3055a(str));
    }
}
