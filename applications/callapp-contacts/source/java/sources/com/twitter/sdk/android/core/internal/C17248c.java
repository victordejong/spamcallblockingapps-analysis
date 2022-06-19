package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.AbstractC17212f;
import com.twitter.sdk.android.core.C17282n;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.twitter.sdk.android.core.internal.c */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/c.class */
public final class C17248c {

    /* renamed from: a */
    private static final int f60995a;

    /* renamed from: b */
    private static final int f60996b;

    /* renamed from: c */
    private static final int f60997c;

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f60995a = availableProcessors;
        f60996b = availableProcessors + 1;
        f60997c = (availableProcessors * 2) + 1;
    }

    private C17248c() {
    }

    /* renamed from: a */
    public static /* synthetic */ Thread m5667a(String str, AtomicLong atomicLong, Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
        newThread.setName(str + atomicLong.getAndIncrement());
        return newThread;
    }

    /* renamed from: a */
    public static ExecutorService m5668a(final String str) {
        final AtomicLong atomicLong = new AtomicLong(1L);
        final ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f60996b, f60997c, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.twitter.sdk.android.core.internal._$$Lambda$c$axOenYbgN1RbdaXvKxvyoWoDmlA
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread m5667a;
                m5667a = C17248c.m5667a(str, atomicLong, runnable);
                return m5667a;
            }
        });
        final TimeUnit timeUnit = TimeUnit.SECONDS;
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() { // from class: com.twitter.sdk.android.core.internal._$$Lambda$c$68_zTC9zR_dDPG7PwACOoXCD9ao
            @Override // java.lang.Runnable
            public final void run() {
                C17248c.m5666a(threadPoolExecutor, r6, timeUnit, str);
            }
        }, "Twitter Shutdown Hook for ".concat(String.valueOf(str))));
        return threadPoolExecutor;
    }

    /* renamed from: a */
    public static /* synthetic */ void m5666a(ExecutorService executorService, long j, TimeUnit timeUnit, String str) {
        try {
            executorService.shutdown();
            if (executorService.awaitTermination(j, timeUnit)) {
                return;
            }
            AbstractC17212f m5628c = C17282n.m5628c();
            m5628c.mo5714a("Twitter", str + " did not shutdown in the allocated time. Requesting immediate shutdown.");
            executorService.shutdownNow();
        } catch (InterruptedException e) {
            C17282n.m5628c().mo5714a("Twitter", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", str));
            executorService.shutdownNow();
        }
    }
}
