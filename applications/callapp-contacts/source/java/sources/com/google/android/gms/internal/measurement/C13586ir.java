package com.google.android.gms.internal.measurement;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.measurement.ir */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ir.class */
final class C13586ir implements AbstractC13535gu {
    private C13586ir() {
    }

    public /* synthetic */ C13586ir(C13560hs c13560hs) {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13535gu
    /* renamed from: a */
    public final ExecutorService mo12557a(ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }
}
