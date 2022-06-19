package p162m;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.p012v4.media.AbstractC0081a;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: m.b */
/* loaded from: classes-dex2jar.jar:m/b.class */
public class C3544b extends AbstractC0081a {

    /* renamed from: a */
    public final Object f11710a = new Object();

    /* renamed from: b */
    public final ExecutorService f11711b = Executors.newFixedThreadPool(4, new ThreadFactoryC3545a(this));

    /* renamed from: c */
    public volatile Handler f11712c;

    /* renamed from: m.b$a */
    /* loaded from: classes-dex2jar.jar:m/b$a.class */
    public class ThreadFactoryC3545a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f11713a = new AtomicInteger(0);

        public ThreadFactoryC3545a(C3544b c3544b) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f11713a.getAndIncrement())));
            return thread;
        }
    }

    /* renamed from: M */
    public static Handler m2199M(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Handler.createAsync(looper);
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException e) {
            return new Handler(looper);
        } catch (InvocationTargetException e2) {
            return new Handler(looper);
        }
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: I */
    public void mo2200I(Runnable runnable) {
        if (this.f11712c == null) {
            synchronized (this.f11710a) {
                if (this.f11712c == null) {
                    this.f11712c = m2199M(Looper.getMainLooper());
                }
            }
        }
        this.f11712c.post(runnable);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: o */
    public void mo2198o(Runnable runnable) {
        this.f11711b.execute(runnable);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: v */
    public boolean mo2197v() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
