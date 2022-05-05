package com.criteo.publisher.p026s;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.criteo.publisher.C1974i;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.criteo.publisher.s.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/s/b.class */
public class C2096b implements C1974i.AbstractC2000m0<ThreadPoolExecutor> {

    /* renamed from: com.criteo.publisher.s.b$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/s/b$b.class */
    public static class RejectedExecutionHandlerC2098b implements RejectedExecutionHandler {
        @GuardedBy("this")

        /* renamed from: a */
        public ThreadPoolExecutor f2345a;

        public RejectedExecutionHandlerC2098b() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                if (this.f2345a == null) {
                    this.f2345a = new ThreadPoolExecutor(5, 5, 3L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());
                }
            }
            this.f2345a.execute(runnable);
        }
    }

    @Override // com.criteo.publisher.C1974i.AbstractC2000m0
    @NonNull
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public ThreadPoolExecutor mo35616a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 20, 3L, TimeUnit.SECONDS, new SynchronousQueue(), Executors.defaultThreadFactory());
        threadPoolExecutor.setRejectedExecutionHandler(new RejectedExecutionHandlerC2098b());
        return threadPoolExecutor;
    }
}
