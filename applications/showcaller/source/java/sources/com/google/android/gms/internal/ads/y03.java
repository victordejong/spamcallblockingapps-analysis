package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y03.class */
public final class y03 {
    /* renamed from: a */
    public static Executor m9007a() {
        return zzfrr.INSTANCE;
    }

    /* renamed from: b */
    public static s03 m9006b(ExecutorService executorService) {
        return executorService instanceof s03 ? (s03) executorService : executorService instanceof ScheduledExecutorService ? new x03((ScheduledExecutorService) executorService) : new u03(executorService);
    }

    /* renamed from: c */
    public static Executor m9005c(Executor executor, fz2<?> fz2Var) {
        Objects.requireNonNull(executor);
        return executor == zzfrr.INSTANCE ? executor : new t03(executor, fz2Var);
    }
}
