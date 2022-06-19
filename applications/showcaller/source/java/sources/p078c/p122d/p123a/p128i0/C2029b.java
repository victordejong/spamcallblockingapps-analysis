package p078c.p122d.p123a.p128i0;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: c.d.a.i0.b */
/* loaded from: classes2-dex2jar.jar:c/d/a/i0/b.class */
public class C2029b {

    /* renamed from: c.d.a.i0.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/i0/b$a.class */
    public static class ThreadFactoryC2030a implements ThreadFactory {

        /* renamed from: a */
        private static final AtomicInteger f7146a = new AtomicInteger(1);

        /* renamed from: b */
        private final String f7147b;

        /* renamed from: d */
        private final AtomicInteger f7149d = new AtomicInteger(1);

        /* renamed from: c */
        private final ThreadGroup f7148c = Thread.currentThread().getThreadGroup();

        ThreadFactoryC2030a(String str) {
            this.f7147b = C2040f.m28238D(str);
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f7148c;
            Thread thread = new Thread(threadGroup, runnable, this.f7147b + this.f7149d.getAndIncrement(), 0L);
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
    public static ThreadPoolExecutor m28265a(int i, String str) {
        return m28264b(i, new LinkedBlockingQueue(), str);
    }

    /* renamed from: b */
    public static ThreadPoolExecutor m28264b(int i, LinkedBlockingQueue<Runnable> linkedBlockingQueue, String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 15L, TimeUnit.SECONDS, linkedBlockingQueue, new ThreadFactoryC2030a(str));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* renamed from: c */
    public static ThreadPoolExecutor m28263c(String str) {
        return new ThreadPoolExecutor(0, Integer.MAX_VALUE, 15L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactoryC2030a(str));
    }
}
