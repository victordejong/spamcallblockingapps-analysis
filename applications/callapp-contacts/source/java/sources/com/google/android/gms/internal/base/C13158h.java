package com.google.android.gms.internal.base;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.base.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/base/h.class */
final class C13158h implements AbstractC13156f {
    private C13158h() {
    }

    public /* synthetic */ C13158h(C13157g c13157g) {
    }

    /* renamed from: a */
    private static ExecutorService m13595a(int i, ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.base.AbstractC13156f
    /* renamed from: a */
    public final ExecutorService mo13596a() {
        return m13595a(4, Executors.defaultThreadFactory());
    }

    @Override // com.google.android.gms.internal.base.AbstractC13156f
    /* renamed from: a */
    public final ExecutorService mo13594a(ThreadFactory threadFactory) {
        return m13595a(1, threadFactory);
    }
}
