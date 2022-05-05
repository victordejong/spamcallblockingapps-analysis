package androidx.arch.core.executor;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/arch/core/executor/DefaultTaskExecutor.class */
public class DefaultTaskExecutor extends TaskExecutor {

    /* renamed from: a */
    private final Object f1463a = new Object();

    /* renamed from: b */
    private final ExecutorService f1464b = Executors.newFixedThreadPool(4, new ThreadFactory(this) { // from class: androidx.arch.core.executor.DefaultTaskExecutor.1

        /* renamed from: f */
        private final AtomicInteger f1466f = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f1466f.getAndIncrement())));
            return thread;
        }
    });
    @Nullable

    /* renamed from: c */
    private volatile Handler f1465c;

    /* renamed from: d */
    private static Handler m21144d(@NonNull Looper looper) {
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

    @Override // androidx.arch.core.executor.TaskExecutor
    /* renamed from: a */
    public void mo21143a(Runnable runnable) {
        this.f1464b.execute(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    /* renamed from: b */
    public boolean mo21142b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    /* renamed from: c */
    public void mo21141c(Runnable runnable) {
        if (this.f1465c == null) {
            synchronized (this.f1463a) {
                if (this.f1465c == null) {
                    this.f1465c = m21144d(Looper.getMainLooper());
                }
            }
        }
        this.f1465c.post(runnable);
    }
}
