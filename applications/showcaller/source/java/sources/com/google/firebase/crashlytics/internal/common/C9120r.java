package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.p293d.C8898b;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.google.firebase.crashlytics.internal.common.r */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/r.class */
public final class C9120r {

    /* renamed from: com.google.firebase.crashlytics.internal.common.r$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/r$a.class */
    public class ThreadFactoryC9121a implements ThreadFactory {

        /* renamed from: a */
        final /* synthetic */ String f39389a;

        /* renamed from: b */
        final /* synthetic */ AtomicLong f39390b;

        /* renamed from: com.google.firebase.crashlytics.internal.common.r$a$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/r$a$a.class */
        class C9122a extends AbstractRunnableC9079c {

            /* renamed from: d */
            final /* synthetic */ Runnable f39391d;

            C9122a(Runnable runnable) {
                ThreadFactoryC9121a.this = r4;
                this.f39391d = runnable;
            }

            @Override // com.google.firebase.crashlytics.internal.common.AbstractRunnableC9079c
            /* renamed from: a */
            public void mo1783a() {
                this.f39391d.run();
            }
        }

        ThreadFactoryC9121a(String str, AtomicLong atomicLong) {
            this.f39389a = str;
            this.f39390b = atomicLong;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(new C9122a(runnable));
            newThread.setName(this.f39389a + this.f39390b.getAndIncrement());
            return newThread;
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.r$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/r$b.class */
    public class C9123b extends AbstractRunnableC9079c {

        /* renamed from: d */
        final /* synthetic */ String f39393d;

        /* renamed from: e */
        final /* synthetic */ ExecutorService f39394e;

        /* renamed from: f */
        final /* synthetic */ long f39395f;

        /* renamed from: g */
        final /* synthetic */ TimeUnit f39396g;

        C9123b(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
            this.f39393d = str;
            this.f39394e = executorService;
            this.f39395f = j;
            this.f39396g = timeUnit;
        }

        @Override // com.google.firebase.crashlytics.internal.common.AbstractRunnableC9079c
        /* renamed from: a */
        public void mo1783a() {
            try {
                C8898b m2397f = C8898b.m2397f();
                m2397f.m2401b("Executing shutdown hook for " + this.f39393d);
                this.f39394e.shutdown();
                if (this.f39394e.awaitTermination(this.f39395f, this.f39396g)) {
                    return;
                }
                C8898b m2397f2 = C8898b.m2397f();
                m2397f2.m2401b(this.f39393d + " did not shut down in the allocated time. Requesting immediate shutdown.");
                this.f39394e.shutdownNow();
            } catch (InterruptedException e) {
                C8898b.m2397f().m2401b(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f39393d));
                this.f39394e.shutdownNow();
            }
        }
    }

    /* renamed from: a */
    private static void m1788a(String str, ExecutorService executorService) {
        m1787b(str, executorService, 2L, TimeUnit.SECONDS);
    }

    /* renamed from: b */
    private static void m1787b(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        Runtime runtime = Runtime.getRuntime();
        C9123b c9123b = new C9123b(str, executorService, j, timeUnit);
        runtime.addShutdownHook(new Thread(c9123b, "Crashlytics Shutdown Hook for " + str));
    }

    /* renamed from: c */
    public static ExecutorService m1786c(String str) {
        ExecutorService m1784e = m1784e(m1785d(str), new ThreadPoolExecutor.DiscardPolicy());
        m1788a(str, m1784e);
        return m1784e;
    }

    /* renamed from: d */
    public static ThreadFactory m1785d(String str) {
        return new ThreadFactoryC9121a(str, new AtomicLong(1L));
    }

    /* renamed from: e */
    private static ExecutorService m1784e(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        return Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler));
    }
}
