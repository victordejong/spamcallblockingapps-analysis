package com.facebook.biddingkit.p294e;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.facebook.biddingkit.e.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/e/a.class */
public class ExecutorC10140a implements Executor {

    /* renamed from: a */
    public static final Executor f33532a = new ExecutorC10140a("GENERAL_EXECUTOR", 4, 32);

    /* renamed from: b */
    public static final ScheduledExecutorService f33533b = Executors.newScheduledThreadPool(4);

    /* renamed from: d */
    private static int f33534d = 32;

    /* renamed from: c */
    private ThreadPoolExecutor f33535c;

    ExecutorC10140a(final String str, int i, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i2, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.facebook.biddingkit.e.a.1

            /* renamed from: c */
            private final AtomicInteger f33538c = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, String.format(Locale.US, "BiddingKit:%s #%d", str, Integer.valueOf(this.f33538c.getAndIncrement())));
            }
        });
        this.f33535c = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        int size = this.f33535c.getQueue().size();
        synchronized (ExecutorC10140a.class) {
            try {
                int i = f33534d;
                if (size == i) {
                    f33534d = i * 2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f33535c.execute(runnable);
    }
}
