package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.C1609e;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.zo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zo.class */
public final class C2073zo {

    /* renamed from: a */
    public static final sz1 f9410a;

    /* renamed from: b */
    public static final sz1 f9411b;

    /* renamed from: c */
    public static final sz1 f9412c;

    /* renamed from: d */
    public static final ScheduledExecutorService f9413d;

    /* renamed from: e */
    public static final sz1 f9414e;

    /* renamed from: f */
    public static final sz1 f9415f;

    static {
        Executor executor;
        ExecutorService executorService;
        ExecutorService executorService2;
        if (C1609e.m8248a()) {
            sv1.m5567a();
            executor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new ThreadFactoryC2023wo("Default")));
        } else {
            executor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactoryC2023wo("Default"));
        }
        f9410a = new yo(executor, (C2000vo) null);
        if (C1609e.m8248a()) {
            executorService = sv1.m5567a().m6160b(5, new ThreadFactoryC2023wo("Loader"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC2023wo("Loader"));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            executorService = threadPoolExecutor;
        }
        f9411b = new yo(executorService, (C2000vo) null);
        if (C1609e.m8248a()) {
            executorService2 = sv1.m5567a().m6159c(new ThreadFactoryC2023wo("Activeview"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC2023wo("Activeview"));
            threadPoolExecutor2.allowCoreThreadTimeOut(true);
            executorService2 = threadPoolExecutor2;
        }
        f9412c = new yo(executorService2, (C2000vo) null);
        f9413d = new C2000vo(3, new ThreadFactoryC2023wo("Schedule"));
        f9414e = new yo(new ExecutorC2038xo(), (C2000vo) null);
        f9415f = new yo(zz1.m4498a(), (C2000vo) null);
    }
}
