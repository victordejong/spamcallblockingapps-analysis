package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.able.Cancelable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/AsyncRequestExecutor.class */
public enum AsyncRequestExecutor {
    INSTANCE;
    
    private static final Executor EXECUTOR;
    private static final ThreadFactory THREAD_FACTORY;

    static {
        ThreadFactory threadFactory = new ThreadFactory() { // from class: com.yanzhenjie.nohttp.rest.AsyncRequestExecutor.1
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "Request #" + this.mCount.getAndIncrement());
            }
        };
        THREAD_FACTORY = threadFactory;
        EXECUTOR = Executors.newCachedThreadPool(threadFactory);
    }

    public <T> Cancelable execute(int i, Request<T> request, OnResponseListener<T> onResponseListener) {
        Work work = new Work(new Worker(request), i, onResponseListener);
        request.setCancelable(work);
        EXECUTOR.execute(work);
        return work;
    }
}
