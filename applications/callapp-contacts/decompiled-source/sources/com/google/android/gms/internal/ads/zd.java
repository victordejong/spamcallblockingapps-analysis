package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zd.class */
public final class zd {

    /* renamed from: b  reason: collision with root package name */
    public static final dbs f28574b;

    /* renamed from: c  reason: collision with root package name */
    public static final dbs f28575c;

    /* renamed from: a  reason: collision with root package name */
    public static final dbs f28573a = a(new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10, TimeUnit.SECONDS, new SynchronousQueue(), a("Default")));

    /* renamed from: d  reason: collision with root package name */
    public static final ScheduledExecutorService f28576d = new zg(3, a("Schedule"));
    public static final dbs e = a(new zi());
    public static final dbs f = a(dba.INSTANCE);

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), a("Loader"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f28574b = a(threadPoolExecutor);
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), a("Activeview"));
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        f28575c = a(threadPoolExecutor2);
    }

    private static dbs a(Executor executor) {
        return new zh(executor, null);
    }

    private static ThreadFactory a(String str) {
        return new zf(str);
    }
}
