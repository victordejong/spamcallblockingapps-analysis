package com.google.android.gms.internal.consent_sdk;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.consent_sdk.bh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bh.class */
public final class ExecutorC13205bh implements Executor {

    /* renamed from: a */
    final AtomicInteger f50386a = new AtomicInteger(1);

    /* renamed from: b */
    WeakReference<Thread> f50387b = new WeakReference<>(null);

    /* renamed from: c */
    private final ThreadPoolExecutor f50388c;

    public ExecutorC13205bh(String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory(this, str) { // from class: com.google.android.gms.internal.consent_sdk.bg

            /* renamed from: a */
            private final ExecutorC13205bh f50384a;

            /* renamed from: b */
            private final String f50385b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f50384a = this;
                this.f50385b = str;
            }

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                ExecutorC13205bh executorC13205bh = this.f50384a;
                String str2 = this.f50385b;
                int andIncrement = executorC13205bh.f50386a.getAndIncrement();
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 13);
                sb.append(str2);
                sb.append(" #");
                sb.append(andIncrement);
                Thread thread = new Thread(runnable, sb.toString());
                executorC13205bh.f50387b = new WeakReference<>(thread);
                return thread;
            }
        });
        this.f50388c = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Thread.currentThread() == this.f50387b.get()) {
            runnable.run();
        } else {
            this.f50388c.execute(runnable);
        }
    }
}
