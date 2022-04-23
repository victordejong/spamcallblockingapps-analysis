package com.google.android.gms.internal.consent_sdk;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bh.class */
final class bh implements Executor {

    /* renamed from: a  reason: collision with root package name */
    final AtomicInteger f28755a = new AtomicInteger(1);

    /* renamed from: b  reason: collision with root package name */
    WeakReference<Thread> f28756b = new WeakReference<>(null);

    /* renamed from: c  reason: collision with root package name */
    private final ThreadPoolExecutor f28757c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bh(final String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory(this, str) { // from class: com.google.android.gms.internal.consent_sdk.bg

            /* renamed from: a  reason: collision with root package name */
            private final bh f28753a;

            /* renamed from: b  reason: collision with root package name */
            private final String f28754b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28753a = this;
                this.f28754b = str;
            }

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                bh bhVar = this.f28753a;
                String str2 = this.f28754b;
                int andIncrement = bhVar.f28755a.getAndIncrement();
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 13);
                sb.append(str2);
                sb.append(" #");
                sb.append(andIncrement);
                Thread thread = new Thread(runnable, sb.toString());
                bhVar.f28756b = new WeakReference<>(thread);
                return thread;
            }
        });
        this.f28757c = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Thread.currentThread() == this.f28756b.get()) {
            runnable.run();
        } else {
            this.f28757c.execute(runnable);
        }
    }
}
