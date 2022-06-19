package com.huawei.hms.hatool;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.mopub.mobileads.AdData;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.o0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/o0.class */
public class C2378o0 {

    /* renamed from: b */
    public static C2378o0 f7585b = new C2378o0();

    /* renamed from: c */
    public static C2378o0 f7586c = new C2378o0();

    /* renamed from: d */
    public static C2378o0 f7587d = new C2378o0();

    /* renamed from: a */
    public ThreadPoolExecutor f7588a = new ThreadPoolExecutor(0, 1, (long) DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, TimeUnit.MILLISECONDS, new LinkedBlockingQueue((int) AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS), new ThreadFactoryC2380b());

    /* renamed from: com.huawei.hms.hatool.o0$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/o0$a.class */
    public static class RunnableC2379a implements Runnable {

        /* renamed from: a */
        public Runnable f7589a;

        public RunnableC2379a(Runnable runnable) {
            this.f7589a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.f7589a;
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Exception e) {
                    C2398y.m37470e("hmsSdk", "InnerTask : Exception has happened,From internal operations!");
                }
            }
        }
    }

    /* renamed from: com.huawei.hms.hatool.o0$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/o0$b.class */
    public static class ThreadFactoryC2380b implements ThreadFactory {

        /* renamed from: d */
        public static final AtomicInteger f7590d = new AtomicInteger(1);

        /* renamed from: a */
        public final ThreadGroup f7591a;

        /* renamed from: b */
        public final AtomicInteger f7592b = new AtomicInteger(1);

        /* renamed from: c */
        public final String f7593c;

        public ThreadFactoryC2380b() {
            SecurityManager securityManager = System.getSecurityManager();
            this.f7591a = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            StringBuilder m8728C = C22128a.m8728C("FormalHASDK-base-");
            m8728C.append(f7590d.getAndIncrement());
            this.f7593c = m8728C.toString();
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f7591a;
            return new Thread(threadGroup, runnable, this.f7593c + this.f7592b.getAndIncrement(), 0L);
        }
    }

    static {
        new C2378o0();
        new C2378o0();
    }

    /* renamed from: a */
    public static C2378o0 m37556a() {
        return f7587d;
    }

    /* renamed from: b */
    public static C2378o0 m37554b() {
        return f7586c;
    }

    /* renamed from: c */
    public static C2378o0 m37553c() {
        return f7585b;
    }

    /* renamed from: a */
    public void m37555a(AbstractRunnableC2376n0 abstractRunnableC2376n0) {
        try {
            this.f7588a.execute(new RunnableC2379a(abstractRunnableC2376n0));
        } catch (RejectedExecutionException e) {
            C2398y.m37470e("hmsSdk", "addToQueue() Exception has happened!Form rejected execution");
        }
    }
}
