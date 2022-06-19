package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wt2.class */
final class wt2 implements vt2 {
    public /* synthetic */ wt2(xt2 xt2Var) {
    }

    @Override // com.google.android.gms.internal.ads.vt2
    /* renamed from: a */
    public final ExecutorService mo9462a(int i) {
        return mo9461b(1, Executors.defaultThreadFactory(), 2);
    }

    @Override // com.google.android.gms.internal.ads.vt2
    /* renamed from: b */
    public final ExecutorService mo9461b(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.ads.vt2
    /* renamed from: c */
    public final ExecutorService mo9460c(ThreadFactory threadFactory, int i) {
        return mo9461b(1, threadFactory, 1);
    }
}
