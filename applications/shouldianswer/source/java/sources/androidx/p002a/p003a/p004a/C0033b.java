package androidx.p002a.p003a.p004a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.a.a.a.b */
/* loaded from: classes-dex2jar.jar:androidx/a/a/a/b.class */
public class C0033b extends AbstractC0035c {

    /* renamed from: a */
    private final Object f67a = new Object();

    /* renamed from: b */
    private final ExecutorService f68b = Executors.newFixedThreadPool(4, new ThreadFactory() { // from class: androidx.a.a.a.b.1

        /* renamed from: b */
        private final AtomicInteger f71b = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f71b.getAndIncrement())));
            return thread;
        }
    });

    /* renamed from: c */
    private volatile Handler f69c;

    /* renamed from: a */
    private static Handler m8019a(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Handler.createAsync(looper);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, true);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException e) {
            } catch (InvocationTargetException e2) {
                return new Handler(looper);
            }
        }
        return new Handler(looper);
    }

    @Override // androidx.p002a.p003a.p004a.AbstractC0035c
    /* renamed from: a */
    public void mo8018a(Runnable runnable) {
        this.f68b.execute(runnable);
    }

    @Override // androidx.p002a.p003a.p004a.AbstractC0035c
    /* renamed from: b */
    public void mo8017b(Runnable runnable) {
        if (this.f69c == null) {
            synchronized (this.f67a) {
                if (this.f69c == null) {
                    this.f69c = m8019a(Looper.getMainLooper());
                }
            }
        }
        this.f69c.post(runnable);
    }

    @Override // androidx.p002a.p003a.p004a.AbstractC0035c
    /* renamed from: c */
    public boolean mo8016c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
