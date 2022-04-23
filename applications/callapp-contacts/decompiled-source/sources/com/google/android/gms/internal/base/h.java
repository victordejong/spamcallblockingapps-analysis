package com.google.android.gms.internal.base;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/base/h.class */
final class h implements f {
    private h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ h(g gVar) {
    }

    private static ExecutorService a(int i, ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.base.f
    public final ExecutorService a() {
        return a(4, Executors.defaultThreadFactory());
    }

    @Override // com.google.android.gms.internal.base.f
    public final ExecutorService a(ThreadFactory threadFactory) {
        return a(1, threadFactory);
    }
}
