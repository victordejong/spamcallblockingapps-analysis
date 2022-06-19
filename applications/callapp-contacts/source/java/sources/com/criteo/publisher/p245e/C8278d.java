package com.criteo.publisher.p245e;

import com.criteo.publisher.C8520q;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.criteo.publisher.e.d */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e/d.class */
public final class C8278d implements C8520q.AbstractC8521a<ThreadPoolExecutor> {

    /* renamed from: com.criteo.publisher.e.d$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e/d$b.class */
    static final class RejectedExecutionHandlerC8280b implements RejectedExecutionHandler {

        /* renamed from: a */
        private ThreadPoolExecutor f29852a;

        private RejectedExecutionHandlerC8280b() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                if (this.f29852a == null) {
                    this.f29852a = new ThreadPoolExecutor(5, 5, 3L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());
                }
            }
            this.f29852a.execute(runnable);
        }
    }

    @Override // com.criteo.publisher.C8520q.AbstractC8521a
    /* renamed from: a */
    public final /* synthetic */ ThreadPoolExecutor mo25382a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 20, 3L, TimeUnit.SECONDS, new SynchronousQueue(), Executors.defaultThreadFactory());
        threadPoolExecutor.setRejectedExecutionHandler(new RejectedExecutionHandlerC8280b());
        return threadPoolExecutor;
    }
}
