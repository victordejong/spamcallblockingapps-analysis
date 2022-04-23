package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.f;
import com.twitter.sdk.android.core.n;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int f35148a;

    /* renamed from: b  reason: collision with root package name */
    private static final int f35149b;

    /* renamed from: c  reason: collision with root package name */
    private static final int f35150c;

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f35148a = availableProcessors;
        f35149b = availableProcessors + 1;
        f35150c = (availableProcessors * 2) + 1;
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread a(String str, AtomicLong atomicLong, Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
        newThread.setName(str + atomicLong.getAndIncrement());
        return newThread;
    }

    public static ExecutorService a(final String str) {
        final AtomicLong atomicLong = new AtomicLong(1L);
        final ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f35149b, f35150c, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.twitter.sdk.android.core.internal._$$Lambda$c$axOenYbgN1RbdaXvKxvyoWoDmlA
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread a2;
                a2 = c.a(str, atomicLong, runnable);
                return a2;
            }
        });
        final TimeUnit timeUnit = TimeUnit.SECONDS;
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() { // from class: com.twitter.sdk.android.core.internal._$$Lambda$c$68_zTC9zR_dDPG7PwACOoXCD9ao
            @Override // java.lang.Runnable
            public final void run() {
                c.a(threadPoolExecutor, r6, timeUnit, str);
            }
        }, "Twitter Shutdown Hook for ".concat(String.valueOf(str))));
        return threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(ExecutorService executorService, long j, TimeUnit timeUnit, String str) {
        try {
            executorService.shutdown();
            if (!executorService.awaitTermination(j, timeUnit)) {
                f c2 = n.c();
                c2.a("Twitter", str + " did not shutdown in the allocated time. Requesting immediate shutdown.");
                executorService.shutdownNow();
            }
        } catch (InterruptedException e) {
            n.c().a("Twitter", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", str));
            executorService.shutdownNow();
        }
    }
}
