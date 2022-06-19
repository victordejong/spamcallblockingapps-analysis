package androidx.p003a.p004a.p005a;

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
public class C0064b extends AbstractC0066c {

    /* renamed from: a */
    private final Object f157a = new Object();

    /* renamed from: b */
    private final ExecutorService f158b = Executors.newFixedThreadPool(4, new ThreadFactory() { // from class: androidx.a.a.a.b.1

        /* renamed from: b */
        private final AtomicInteger f161b = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f161b.getAndIncrement())));
            return thread;
        }
    });

    /* renamed from: c */
    private volatile Handler f159c;

    /* renamed from: a */
    private static Handler m22311a(Looper looper) {
        Handler handler;
        if (Build.VERSION.SDK_INT >= 28) {
            handler = Handler.createAsync(looper);
        } else {
            if (Build.VERSION.SDK_INT >= 16) {
                try {
                    handler = (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, true);
                } catch (IllegalAccessException e) {
                } catch (InstantiationException e2) {
                } catch (NoSuchMethodException e3) {
                } catch (InvocationTargetException e4) {
                    handler = new Handler(looper);
                }
            }
            handler = new Handler(looper);
        }
        return handler;
    }

    @Override // androidx.p003a.p004a.p005a.AbstractC0066c
    /* renamed from: a */
    public void mo22310a(Runnable runnable) {
        this.f158b.execute(runnable);
    }

    @Override // androidx.p003a.p004a.p005a.AbstractC0066c
    /* renamed from: b */
    public void mo22309b(Runnable runnable) {
        if (this.f159c == null) {
            synchronized (this.f157a) {
                if (this.f159c == null) {
                    this.f159c = m22311a(Looper.getMainLooper());
                }
            }
        }
        this.f159c.post(runnable);
    }

    @Override // androidx.p003a.p004a.p005a.AbstractC0066c
    /* renamed from: c */
    public boolean mo22308c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
