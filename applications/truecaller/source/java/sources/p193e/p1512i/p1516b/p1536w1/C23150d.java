package p193e.p1512i.p1516b.p1536w1;

import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p193e.p1512i.p1516b.C23157x2;
/* renamed from: e.i.b.w1.d */
/* loaded from: classes-dex2jar.jar:e/i/b/w1/d.class */
public class C23150d implements C23157x2.AbstractC23158a<ThreadPoolExecutor> {

    /* renamed from: e.i.b.w1.d$b */
    /* loaded from: classes-dex2jar.jar:e/i/b/w1/d$b.class */
    public static class RejectedExecutionHandlerC23152b implements RejectedExecutionHandler {

        /* renamed from: a */
        public ThreadPoolExecutor f64120a;

        public RejectedExecutionHandlerC23152b(C23151a c23151a) {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                if (this.f64120a == null) {
                    this.f64120a = new ThreadPoolExecutor(5, 5, 3L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());
                }
            }
            this.f64120a.execute(runnable);
        }
    }

    @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
    /* renamed from: a */
    public ThreadPoolExecutor mo7423a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 20, 3L, TimeUnit.SECONDS, new SynchronousQueue(), Executors.defaultThreadFactory());
        threadPoolExecutor.setRejectedExecutionHandler(new RejectedExecutionHandlerC23152b(null));
        return threadPoolExecutor;
    }
}
