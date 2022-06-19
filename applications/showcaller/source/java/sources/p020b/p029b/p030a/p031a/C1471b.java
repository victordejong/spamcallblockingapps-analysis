package p020b.p029b.p030a.p031a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: b.b.a.a.b */
/* loaded from: classes-dex2jar.jar:b/b/a/a/b.class */
public class C1471b extends AbstractC1473c {

    /* renamed from: a */
    private final Object f5910a = new Object();

    /* renamed from: b */
    private final ExecutorService f5911b = Executors.newFixedThreadPool(4, new ThreadFactoryC1472a());

    /* renamed from: c */
    private volatile Handler f5912c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.b.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/b/a/a/b$a.class */
    public class ThreadFactoryC1472a implements ThreadFactory {

        /* renamed from: a */
        private final AtomicInteger f5913a = new AtomicInteger(0);

        ThreadFactoryC1472a() {
            C1471b.this = r6;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f5913a.getAndIncrement())));
            return thread;
        }
    }

    /* renamed from: d */
    private static Handler m29992d(Looper looper) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return Handler.createAsync(looper);
        }
        if (i >= 16) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException e) {
            } catch (InvocationTargetException e2) {
                return new Handler(looper);
            }
        }
        return new Handler(looper);
    }

    @Override // p020b.p029b.p030a.p031a.AbstractC1473c
    /* renamed from: a */
    public void mo29991a(Runnable runnable) {
        this.f5911b.execute(runnable);
    }

    @Override // p020b.p029b.p030a.p031a.AbstractC1473c
    /* renamed from: b */
    public boolean mo29990b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // p020b.p029b.p030a.p031a.AbstractC1473c
    /* renamed from: c */
    public void mo29989c(Runnable runnable) {
        if (this.f5912c == null) {
            synchronized (this.f5910a) {
                if (this.f5912c == null) {
                    this.f5912c = m29992d(Looper.getMainLooper());
                }
            }
        }
        this.f5912c.post(runnable);
    }
}
