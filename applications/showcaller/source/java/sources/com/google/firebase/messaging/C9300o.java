package com.google.firebase.messaging;

import com.google.android.gms.common.util.p273v.ThreadFactoryC6244a;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p078c.p084c.p085a.p086a.p088b.p092d.C1858d;
/* renamed from: com.google.firebase.messaging.o */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/o.class */
class C9300o {
    /* renamed from: a */
    private static Executor m1192a(String str) {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC6244a("Firebase-Messaging-Trigger-Topics-Io"));
    }

    /* renamed from: b */
    public static ScheduledExecutorService m1191b() {
        return new ScheduledThreadPoolExecutor(1, new ThreadFactoryC6244a("Firebase-Messaging-Init"));
    }

    /* renamed from: c */
    public static ExecutorService m1190c() {
        C1858d.m28788a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC6244a("Firebase-Messaging-Intent-Handle"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    /* renamed from: d */
    public static ExecutorService m1189d() {
        return Executors.newSingleThreadExecutor(new ThreadFactoryC6244a("Firebase-Messaging-Network-Io"));
    }

    /* renamed from: e */
    public static ExecutorService m1188e() {
        return Executors.newSingleThreadExecutor(new ThreadFactoryC6244a("Firebase-Messaging-Task"));
    }

    /* renamed from: f */
    public static ScheduledExecutorService m1187f() {
        return new ScheduledThreadPoolExecutor(1, new ThreadFactoryC6244a("Firebase-Messaging-Topics-Io"));
    }

    /* renamed from: g */
    public static Executor m1186g() {
        return m1192a("Firebase-Messaging-Trigger-Topics-Io");
    }
}
