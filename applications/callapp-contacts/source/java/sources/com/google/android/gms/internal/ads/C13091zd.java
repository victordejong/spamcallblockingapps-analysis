package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.zd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zd.class */
public final class C13091zd {

    /* renamed from: b */
    public static final dbs f50119b;

    /* renamed from: c */
    public static final dbs f50120c;

    /* renamed from: a */
    public static final dbs f50118a = m13901a(new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10, TimeUnit.SECONDS, new SynchronousQueue(), m13902a("Default")));

    /* renamed from: d */
    public static final ScheduledExecutorService f50121d = new C13094zg(3, m13902a("Schedule"));

    /* renamed from: e */
    public static final dbs f50122e = m13901a(new ExecutorC13096zi());

    /* renamed from: f */
    public static final dbs f50123f = m13901a(dba.INSTANCE);

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), m13902a("Loader"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f50119b = m13901a(threadPoolExecutor);
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), m13902a("Activeview"));
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        f50120c = m13901a(threadPoolExecutor2);
    }

    /* renamed from: a */
    private static dbs m13901a(Executor executor) {
        return new C13095zh(executor, null);
    }

    /* renamed from: a */
    private static ThreadFactory m13902a(String str) {
        return new ThreadFactoryC13093zf(str);
    }
}
