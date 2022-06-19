package p1727n3.p1746c.p1747a.p1748a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: n3.c.a.a.b */
/* loaded from: classes-dex2jar.jar:n3/c/a/a/b.class */
public class C25631b extends AbstractC25633c {

    /* renamed from: a */
    public final Object f71805a = new Object();

    /* renamed from: b */
    public final ExecutorService f71806b = Executors.newFixedThreadPool(4, new ThreadFactoryC25632a(this));

    /* renamed from: c */
    public volatile Handler f71807c;

    /* renamed from: n3.c.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:n3/c/a/a/b$a.class */
    public class ThreadFactoryC25632a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f71808a = new AtomicInteger(0);

        public ThreadFactoryC25632a(C25631b c25631b) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f71808a.getAndIncrement())));
            return thread;
        }
    }

    /* renamed from: d */
    public static Handler m3111d(Looper looper) {
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

    @Override // p1727n3.p1746c.p1747a.p1748a.AbstractC25633c
    /* renamed from: a */
    public void mo3110a(Runnable runnable) {
        this.f71806b.execute(runnable);
    }

    @Override // p1727n3.p1746c.p1747a.p1748a.AbstractC25633c
    /* renamed from: b */
    public boolean mo3109b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // p1727n3.p1746c.p1747a.p1748a.AbstractC25633c
    /* renamed from: c */
    public void mo3108c(Runnable runnable) {
        if (this.f71807c == null) {
            synchronized (this.f71805a) {
                if (this.f71807c == null) {
                    this.f71807c = m3111d(Looper.getMainLooper());
                }
            }
        }
        this.f71807c.post(runnable);
    }
}
