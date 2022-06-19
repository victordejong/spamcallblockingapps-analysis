package com.google.android.gms.internal.p356b;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.b.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/b/c.class */
final class C13146c implements AbstractC13145b {
    /* JADX INFO: Access modifiers changed from: private */
    public C13146c() {
    }

    @Override // com.google.android.gms.internal.p356b.AbstractC13145b
    /* renamed from: a */
    public final ExecutorService mo13605a(ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.p356b.AbstractC13145b
    /* renamed from: b */
    public final ScheduledExecutorService mo13604b(ThreadFactory threadFactory) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, threadFactory));
    }
}
