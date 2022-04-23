package androidx.a.a.a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:androidx/a/a/a/b.class */
public final class b extends c {

    /* renamed from: a  reason: collision with root package name */
    private final Object f492a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f493b = Executors.newFixedThreadPool(4, new ThreadFactory() { // from class: androidx.a.a.a.b.1

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f496b = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f496b.getAndIncrement())));
            return thread;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    private volatile Handler f494c;

    private static Handler a(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Handler.createAsync(looper);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException e) {
            } catch (InvocationTargetException e2) {
                return new Handler(looper);
            }
        }
        return new Handler(looper);
    }

    @Override // androidx.a.a.a.c
    public final void a(Runnable runnable) {
        this.f493b.execute(runnable);
    }

    @Override // androidx.a.a.a.c
    public final void b(Runnable runnable) {
        if (this.f494c == null) {
            synchronized (this.f492a) {
                if (this.f494c == null) {
                    this.f494c = a(Looper.getMainLooper());
                }
            }
        }
        this.f494c.post(runnable);
    }

    @Override // androidx.a.a.a.c
    public final boolean c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
