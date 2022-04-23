package p012b.p027c.p028a.p029a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: b.c.a.a.b */
/* loaded from: classes-dex2jar.jar:b/c/a/a/b.class */
public class C0747b extends AbstractC0749c {

    /* renamed from: a */
    public final Object f3602a = new Object();

    /* renamed from: b */
    public final ExecutorService f3603b = Executors.newFixedThreadPool(2, new ThreadFactoryC0748a(this));

    /* renamed from: c */
    public volatile Handler f3604c;

    /* renamed from: b.c.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/c/a/a/b$a.class */
    public class ThreadFactoryC0748a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f3605a = new AtomicInteger(0);

        public ThreadFactoryC0748a(C0747b bVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f3605a.getAndIncrement())));
            return thread;
        }
    }

    @Override // p012b.p027c.p028a.p029a.AbstractC0749c
    /* renamed from: a */
    public void mo36146a(Runnable runnable) {
        this.f3603b.execute(runnable);
    }

    @Override // p012b.p027c.p028a.p029a.AbstractC0749c
    /* renamed from: a */
    public boolean mo36147a() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // p012b.p027c.p028a.p029a.AbstractC0749c
    /* renamed from: b */
    public void mo36145b(Runnable runnable) {
        if (this.f3604c == null) {
            synchronized (this.f3602a) {
                if (this.f3604c == null) {
                    this.f3604c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.f3604c.post(runnable);
    }
}
