package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.C6226d;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qi0.class */
public final class qi0 {

    /* renamed from: a */
    public static final s03 f28495a;

    /* renamed from: b */
    public static final s03 f28496b;

    /* renamed from: c */
    public static final s03 f28497c;

    /* renamed from: d */
    public static final ScheduledExecutorService f28498d;

    /* renamed from: e */
    public static final s03 f28499e;

    /* renamed from: f */
    public static final s03 f28500f;

    static {
        ExecutorService executorService;
        ThreadPoolExecutor threadPoolExecutor;
        ThreadPoolExecutor threadPoolExecutor2;
        if (C6226d.m16818a()) {
            yt2.m8686a();
            executorService = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new mi0("Default")));
        } else {
            executorService = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new mi0("Default"));
        }
        f28495a = new oi0(executorService, null);
        if (C6226d.m16818a()) {
            threadPoolExecutor = yt2.m8686a().mo9461b(5, new mi0("Loader"), 1);
        } else {
            threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new mi0("Loader"));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        }
        f28496b = new oi0(threadPoolExecutor, null);
        if (C6226d.m16818a()) {
            threadPoolExecutor2 = yt2.m8686a().mo9460c(new mi0("Activeview"), 1);
        } else {
            threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new mi0("Activeview"));
            threadPoolExecutor2.allowCoreThreadTimeOut(true);
        }
        f28497c = new oi0(threadPoolExecutor2, null);
        f28498d = new li0(3, new mi0("Schedule"));
        f28499e = new oi0(new ni0(), null);
        f28500f = new oi0(y03.m9007a(), null);
    }
}
