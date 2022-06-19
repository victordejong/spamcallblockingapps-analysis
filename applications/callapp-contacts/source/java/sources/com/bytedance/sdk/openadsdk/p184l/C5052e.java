package com.bytedance.sdk.openadsdk.p184l;

import com.bytedance.sdk.openadsdk.p184l.C5043a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.openadsdk.l.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/e.class */
public class C5052e {

    /* renamed from: b */
    public static AbstractC5050c f18289b;

    /* renamed from: d */
    private static volatile ThreadPoolExecutor f18291d;

    /* renamed from: e */
    private static volatile ThreadPoolExecutor f18292e;

    /* renamed from: f */
    private static volatile ThreadPoolExecutor f18293f;

    /* renamed from: g */
    private static volatile ScheduledExecutorService f18294g;

    /* renamed from: a */
    public static final int f18288a = Runtime.getRuntime().availableProcessors();

    /* renamed from: c */
    public static boolean f18290c = true;

    /* renamed from: a */
    public static ExecutorService m33163a() {
        if (f18291d == null) {
            synchronized (C5052e.class) {
                try {
                    if (f18291d == null) {
                        C5043a m33192a = new C5043a.C5045a().m33188a("io").m33190a(0).m33183b(Integer.MAX_VALUE).m33189a(20L).m33185a(TimeUnit.SECONDS).m33187a(new SynchronousQueue()).m33186a(m33153f()).m33192a();
                        f18291d = m33192a;
                        m33192a.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18291d;
    }

    /* renamed from: a */
    public static void m33162a(AbstractRunnableC5055g abstractRunnableC5055g) {
        if (f18291d == null) {
            m33163a();
        }
        if (f18291d != null) {
            f18291d.execute(abstractRunnableC5055g);
        }
    }

    /* renamed from: a */
    public static void m33161a(AbstractRunnableC5055g abstractRunnableC5055g, int i) {
        if (f18291d == null) {
            m33163a();
        }
        if (f18291d != null) {
            f18291d.execute(abstractRunnableC5055g);
        }
    }

    /* renamed from: a */
    public static void m33160a(boolean z) {
        f18290c = z;
    }

    /* renamed from: b */
    public static ExecutorService m33159b() {
        if (f18292e == null) {
            synchronized (C5052e.class) {
                try {
                    if (f18292e == null) {
                        C5043a m33192a = new C5043a.C5045a().m33188a("log").m33190a(2).m33183b(4).m33189a(20L).m33185a(TimeUnit.SECONDS).m33187a(new PriorityBlockingQueue()).m33186a(m33153f()).m33192a();
                        f18292e = m33192a;
                        m33192a.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18292e;
    }

    /* renamed from: b */
    public static void m33158b(AbstractRunnableC5055g abstractRunnableC5055g) {
        if (f18292e == null) {
            m33159b();
        }
        if (f18292e != null) {
            f18292e.execute(abstractRunnableC5055g);
        }
    }

    /* renamed from: b */
    public static void m33157b(AbstractRunnableC5055g abstractRunnableC5055g, int i) {
        if (f18293f == null) {
            m33156c();
        }
        if (f18293f != null) {
            f18293f.execute(abstractRunnableC5055g);
        }
    }

    /* renamed from: c */
    public static ExecutorService m33156c() {
        if (f18293f == null) {
            synchronized (C5052e.class) {
                try {
                    if (f18293f == null) {
                        C5043a m33192a = new C5043a.C5045a().m33188a("aidl").m33190a(0).m33183b(4).m33189a(5L).m33185a(TimeUnit.SECONDS).m33187a(new PriorityBlockingQueue()).m33186a(m33153f()).m33192a();
                        f18293f = m33192a;
                        m33192a.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18293f;
    }

    /* renamed from: d */
    public static ScheduledExecutorService m33155d() {
        if (f18294g == null) {
            synchronized (C5052e.class) {
                try {
                    if (f18294g == null) {
                        f18294g = Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC5056h(5, "scheduled"));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18294g;
    }

    /* renamed from: e */
    public static boolean m33154e() {
        return f18290c;
    }

    /* renamed from: f */
    public static RejectedExecutionHandler m33153f() {
        return new RejectedExecutionHandler() { // from class: com.bytedance.sdk.openadsdk.l.e.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            }
        };
    }

    /* renamed from: g */
    public static AbstractC5050c m33152g() {
        return f18289b;
    }
}
