package com.google.android.gms.internal.measurement;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ir.class */
final class ir implements gu {
    private ir() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ir(hs hsVar) {
    }

    @Override // com.google.android.gms.internal.measurement.gu
    public final ExecutorService a(ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }
}
