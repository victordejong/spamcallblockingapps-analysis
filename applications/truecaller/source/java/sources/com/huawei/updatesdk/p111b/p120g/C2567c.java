package com.huawei.updatesdk.p111b.p120g;

import com.tenor.android.core.constant.StringConstant;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.huawei.updatesdk.b.g.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/g/c.class */
public class C2567c {

    /* renamed from: a */
    public static final ThreadPoolExecutor f8275a;

    /* renamed from: b */
    public static final ThreadPoolExecutor f8276b;

    /* renamed from: com.huawei.updatesdk.b.g.c$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/g/c$a.class */
    public static class ThreadFactoryC2568a implements ThreadFactory {

        /* renamed from: a */
        private final AtomicInteger f8277a = new AtomicInteger();

        /* renamed from: b */
        private String f8278b;

        public ThreadFactoryC2568a(String str) {
            this.f8278b = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, this.f8278b + StringConstant.HASH + this.f8277a.incrementAndGet());
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f8275a = new ThreadPoolExecutor(2, 2, 10L, timeUnit, new LinkedBlockingQueue(), new ThreadFactoryC2568a("UpdateSDK-ServerTask"));
        f8276b = new ThreadPoolExecutor(0, 2, 5L, timeUnit, new LinkedBlockingQueue(), new ThreadFactoryC2568a("UpdateSDK-CheckTask"));
    }
}
