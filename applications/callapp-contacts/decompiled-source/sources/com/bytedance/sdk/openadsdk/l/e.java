package com.bytedance.sdk.openadsdk.l;

import com.bytedance.sdk.openadsdk.l.a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/e.class */
public class e {

    /* renamed from: b  reason: collision with root package name */
    public static c f9825b;

    /* renamed from: d  reason: collision with root package name */
    private static volatile ThreadPoolExecutor f9827d;
    private static volatile ThreadPoolExecutor e;
    private static volatile ThreadPoolExecutor f;
    private static volatile ScheduledExecutorService g;

    /* renamed from: a  reason: collision with root package name */
    public static final int f9824a = Runtime.getRuntime().availableProcessors();

    /* renamed from: c  reason: collision with root package name */
    public static boolean f9826c = true;

    public static ExecutorService a() {
        if (f9827d == null) {
            synchronized (e.class) {
                try {
                    if (f9827d == null) {
                        a a2 = new a.C0179a().a("io").a(0).b(Integer.MAX_VALUE).a(20L).a(TimeUnit.SECONDS).a(new SynchronousQueue()).a(f()).a();
                        f9827d = a2;
                        a2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9827d;
    }

    public static void a(g gVar) {
        if (f9827d == null) {
            a();
        }
        if (f9827d != null) {
            f9827d.execute(gVar);
        }
    }

    public static void a(g gVar, int i) {
        if (f9827d == null) {
            a();
        }
        if (f9827d != null) {
            f9827d.execute(gVar);
        }
    }

    public static void a(boolean z) {
        f9826c = z;
    }

    public static ExecutorService b() {
        if (e == null) {
            synchronized (e.class) {
                try {
                    if (e == null) {
                        a a2 = new a.C0179a().a("log").a(2).b(4).a(20L).a(TimeUnit.SECONDS).a(new PriorityBlockingQueue()).a(f()).a();
                        e = a2;
                        a2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public static void b(g gVar) {
        if (e == null) {
            b();
        }
        if (e != null) {
            e.execute(gVar);
        }
    }

    public static void b(g gVar, int i) {
        if (f == null) {
            c();
        }
        if (f != null) {
            f.execute(gVar);
        }
    }

    public static ExecutorService c() {
        if (f == null) {
            synchronized (e.class) {
                try {
                    if (f == null) {
                        a a2 = new a.C0179a().a("aidl").a(0).b(4).a(5L).a(TimeUnit.SECONDS).a(new PriorityBlockingQueue()).a(f()).a();
                        f = a2;
                        a2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public static ScheduledExecutorService d() {
        if (g == null) {
            synchronized (e.class) {
                try {
                    if (g == null) {
                        g = Executors.newSingleThreadScheduledExecutor(new h(5, "scheduled"));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    public static boolean e() {
        return f9826c;
    }

    public static RejectedExecutionHandler f() {
        return new RejectedExecutionHandler() { // from class: com.bytedance.sdk.openadsdk.l.e.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            }
        };
    }

    public static c g() {
        return f9825b;
    }
}
