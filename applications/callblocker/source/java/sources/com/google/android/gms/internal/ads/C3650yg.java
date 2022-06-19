package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.yg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yg.class */
public final class C3650yg {

    /* renamed from: b */
    public static final crs f17643b;

    /* renamed from: c */
    public static final crs f17644c;

    /* renamed from: a */
    public static final crs f17642a = m6737a(new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10, TimeUnit.SECONDS, new SynchronousQueue(), m6738a("Default")));

    /* renamed from: d */
    public static final ScheduledExecutorService f17645d = new ScheduledThreadPoolExecutor(3, m6738a("Schedule"));

    /* renamed from: e */
    public static final crs f17646e = m6737a(new ExecutorC3652yi());

    /* renamed from: f */
    public static final crs f17647f = m6737a(crv.m10766a());

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), m6738a("Loader"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f17643b = m6737a(threadPoolExecutor);
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), m6738a("Activeview"));
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        f17644c = m6737a(threadPoolExecutor2);
    }

    /* renamed from: a */
    private static crs m6737a(Executor executor) {
        return new C3655yl(executor, null);
    }

    /* renamed from: a */
    private static ThreadFactory m6738a(String str) {
        return new ThreadFactoryC3653yj(str);
    }
}
