package com.huawei.hmf.tasks.p083a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.huawei.hmf.tasks.a.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/a/a.class */
public final class C2240a {

    /* renamed from: a */
    public static final int f7222a;

    /* renamed from: b */
    public static final int f7223b;

    /* renamed from: c */
    private static final C2240a f7224c = new C2240a();

    /* renamed from: e */
    private static final int f7225e;

    /* renamed from: d */
    private final Executor f7226d = new ExecutorC2241a((byte) 0);

    /* renamed from: com.huawei.hmf.tasks.a.a$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/a/a$a.class */
    public static final class ExecutorC2241a implements Executor {
        private ExecutorC2241a() {
        }

        public /* synthetic */ ExecutorC2241a(byte b) {
            this();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f7225e = availableProcessors;
        f7222a = availableProcessors + 1;
        f7223b = (availableProcessors * 2) + 1;
    }

    /* renamed from: a */
    public static ExecutorService m38205a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f7222a, f7223b, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* renamed from: b */
    public static Executor m38204b() {
        return f7224c.f7226d;
    }
}
