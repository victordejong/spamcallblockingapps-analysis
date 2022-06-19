package p1727n3.p1758e.p1767b;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1758e.p1759a.p1761e.C25713a1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26056y;
/* renamed from: n3.e.b.j0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j0.class */
public class ExecutorC25933j0 implements Executor {

    /* renamed from: c */
    public static final ThreadFactory f72527c = new ThreadFactoryC25934a();

    /* renamed from: a */
    public final Object f72528a = new Object();

    /* renamed from: b */
    public ThreadPoolExecutor f72529b = m2882a();

    /* renamed from: n3.e.b.j0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j0$a.class */
    public class ThreadFactoryC25934a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f72530a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format(Locale.US, "CameraX-core_camera_%d", Integer.valueOf(this.f72530a.getAndIncrement())));
            return thread;
        }
    }

    /* renamed from: a */
    public static ThreadPoolExecutor m2882a() {
        return new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), f72527c);
    }

    /* renamed from: b */
    public void m2881b(AbstractC26056y abstractC26056y) {
        ThreadPoolExecutor threadPoolExecutor;
        Objects.requireNonNull(abstractC26056y);
        synchronized (this.f72528a) {
            if (this.f72529b.isShutdown()) {
                this.f72529b = m2882a();
            }
            threadPoolExecutor = this.f72529b;
        }
        int max = Math.max(1, ((C25713a1) abstractC26056y).m3037a().size());
        threadPoolExecutor.setMaximumPoolSize(max);
        threadPoolExecutor.setCorePoolSize(max);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Objects.requireNonNull(runnable);
        synchronized (this.f72528a) {
            this.f72529b.execute(runnable);
        }
    }
}
