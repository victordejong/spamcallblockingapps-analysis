package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crv.class */
public final class crv {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.crs] */
    /* renamed from: a */
    public static crs m10764a(ExecutorService executorService) {
        return executorService instanceof crs ? (crs) executorService : executorService instanceof ScheduledExecutorService ? new crz((ScheduledExecutorService) executorService) : new crw(executorService);
    }

    /* renamed from: a */
    public static Executor m10766a() {
        return cqz.INSTANCE;
    }

    /* renamed from: a */
    public static Executor m10765a(Executor executor, cqf<?> cqfVar) {
        cor.m10936a(executor);
        cor.m10936a(cqfVar);
        if (executor != cqz.INSTANCE) {
            executor = new cru(executor, cqfVar);
        }
        return executor;
    }
}
