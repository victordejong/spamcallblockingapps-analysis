package com.facebook.biddingkit.e;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/e/a.class */
public class a implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public static final Executor f19728a = new a("GENERAL_EXECUTOR", 4, 32);

    /* renamed from: b  reason: collision with root package name */
    public static final ScheduledExecutorService f19729b = Executors.newScheduledThreadPool(4);

    /* renamed from: d  reason: collision with root package name */
    private static int f19730d = 32;

    /* renamed from: c  reason: collision with root package name */
    private ThreadPoolExecutor f19731c;

    a(final String str, int i, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i2, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.facebook.biddingkit.e.a.1

            /* renamed from: c  reason: collision with root package name */
            private final AtomicInteger f19734c = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, String.format(Locale.US, "BiddingKit:%s #%d", str, Integer.valueOf(this.f19734c.getAndIncrement())));
            }
        });
        this.f19731c = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        int size = this.f19731c.getQueue().size();
        synchronized (a.class) {
            try {
                int i = f19730d;
                if (size == i) {
                    f19730d = i * 2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f19731c.execute(runnable);
    }
}
