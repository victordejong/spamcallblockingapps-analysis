package com.google.android.gms.internal.measurement;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.measurement.c8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/c8.class */
final class C7325c8 implements AbstractC7379g6 {
    public /* synthetic */ C7325c8(C7324c7 c7324c7) {
    }

    /* renamed from: b */
    public static final ExecutorService m7626b(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7379g6
    /* renamed from: a */
    public final ExecutorService mo7386a(ThreadFactory threadFactory, int i) {
        return m7626b(1, threadFactory, 1);
    }
}
