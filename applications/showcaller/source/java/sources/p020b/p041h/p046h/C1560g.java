package p020b.p041h.p046h;

import android.os.Handler;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p020b.p041h.p049k.AbstractC1590a;
/* renamed from: b.h.h.g */
/* loaded from: classes-dex2jar.jar:b/h/h/g.class */
class C1560g {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.h.g$a */
    /* loaded from: classes-dex2jar.jar:b/h/h/g$a.class */
    public static class ThreadFactoryC1561a implements ThreadFactory {

        /* renamed from: a */
        private String f6119a;

        /* renamed from: b */
        private int f6120b;

        /* renamed from: b.h.h.g$a$a */
        /* loaded from: classes-dex2jar.jar:b/h/h/g$a$a.class */
        private static class C1562a extends Thread {

            /* renamed from: d */
            private final int f6121d;

            C1562a(Runnable runnable, String str, int i) {
                super(runnable, str);
                this.f6121d = i;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f6121d);
                super.run();
            }
        }

        ThreadFactoryC1561a(String str, int i) {
            this.f6119a = str;
            this.f6120b = i;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C1562a(runnable, this.f6119a, this.f6120b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.h.g$b */
    /* loaded from: classes-dex2jar.jar:b/h/h/g$b.class */
    public static class RunnableC1563b<T> implements Runnable {

        /* renamed from: d */
        private Callable<T> f6122d;

        /* renamed from: e */
        private AbstractC1590a<T> f6123e;

        /* renamed from: f */
        private Handler f6124f;

        /* renamed from: b.h.h.g$b$a */
        /* loaded from: classes-dex2jar.jar:b/h/h/g$b$a.class */
        class RunnableC1564a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AbstractC1590a f6125d;

            /* renamed from: e */
            final /* synthetic */ Object f6126e;

            RunnableC1564a(AbstractC1590a abstractC1590a, Object obj) {
                RunnableC1563b.this = r4;
                this.f6125d = abstractC1590a;
                this.f6126e = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.f6125d.mo29670a(this.f6126e);
            }
        }

        RunnableC1563b(Handler handler, Callable<T> callable, AbstractC1590a<T> abstractC1590a) {
            this.f6122d = callable;
            this.f6123e = abstractC1590a;
            this.f6124f = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            T t;
            try {
                t = this.f6122d.call();
            } catch (Exception e) {
                t = null;
            }
            this.f6124f.post(new RunnableC1564a(this.f6123e, t));
        }
    }

    /* renamed from: a */
    public static ThreadPoolExecutor m29727a(String str, int i, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i2, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new ThreadFactoryC1561a(str, i));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* renamed from: b */
    public static <T> void m29726b(Executor executor, Callable<T> callable, AbstractC1590a<T> abstractC1590a) {
        executor.execute(new RunnableC1563b(C1546b.m29764a(), callable, abstractC1590a));
    }

    /* renamed from: c */
    public static <T> T m29725c(ExecutorService executorService, Callable<T> callable, int i) {
        try {
            return executorService.submit(callable).get(i, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw e;
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2);
        } catch (TimeoutException e3) {
            throw new InterruptedException("timeout");
        }
    }
}
