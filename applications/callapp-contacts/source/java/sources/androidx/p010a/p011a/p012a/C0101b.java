package androidx.p010a.p011a.p012a;

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
public final class C0101b extends AbstractC0103c {

    /* renamed from: a */
    private final Object f199a = new Object();

    /* renamed from: b */
    private final ExecutorService f200b = Executors.newFixedThreadPool(4, new ThreadFactory() { // from class: androidx.a.a.a.b.1

        /* renamed from: b */
        private final AtomicInteger f203b = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f203b.getAndIncrement())));
            return thread;
        }
    });

    /* renamed from: c */
    private volatile Handler f201c;

    /* renamed from: a */
    private static Handler m46409a(Looper looper) {
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

    @Override // androidx.p010a.p011a.p012a.AbstractC0103c
    /* renamed from: a */
    public final void mo46408a(Runnable runnable) {
        this.f200b.execute(runnable);
    }

    @Override // androidx.p010a.p011a.p012a.AbstractC0103c
    /* renamed from: b */
    public final void mo46407b(Runnable runnable) {
        if (this.f201c == null) {
            synchronized (this.f199a) {
                if (this.f201c == null) {
                    this.f201c = m46409a(Looper.getMainLooper());
                }
            }
        }
        this.f201c.post(runnable);
    }

    @Override // androidx.p010a.p011a.p012a.AbstractC0103c
    /* renamed from: c */
    public final boolean mo46406c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
