package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zz1.class */
public final class zz1 {
    /* renamed from: a */
    public static Executor m4498a() {
        return zzefc.INSTANCE;
    }

    /* renamed from: b */
    public static sz1 m4497b(ExecutorService executorService) {
        return executorService instanceof sz1 ? (sz1) executorService : executorService instanceof ScheduledExecutorService ? new yz1((ScheduledExecutorService) executorService) : new uz1(executorService);
    }

    /* renamed from: c */
    static Executor m4496c(Executor executor, wx1<?> wx1Var) {
        executor.getClass();
        return executor == zzefc.INSTANCE ? executor : new tz1(executor, wx1Var);
    }
}
