package com.criteo.publisher.e;

import com.criteo.publisher.q;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e/d.class */
public final class d implements q.a<ThreadPoolExecutor> {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e/d$b.class */
    static final class b implements RejectedExecutionHandler {

        /* renamed from: a  reason: collision with root package name */
        private ThreadPoolExecutor f17232a;

        private b() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                if (this.f17232a == null) {
                    this.f17232a = new ThreadPoolExecutor(5, 5, 3L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());
                }
            }
            this.f17232a.execute(runnable);
        }
    }

    @Override // com.criteo.publisher.q.a
    public final /* synthetic */ ThreadPoolExecutor a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 20, 3L, TimeUnit.SECONDS, new SynchronousQueue(), Executors.defaultThreadFactory());
        threadPoolExecutor.setRejectedExecutionHandler(new b());
        return threadPoolExecutor;
    }
}
