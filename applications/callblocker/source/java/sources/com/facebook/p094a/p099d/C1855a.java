package com.facebook.p094a.p099d;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.facebook.C2095j;
import com.facebook.EnumC2197q;
import com.facebook.internal.C2039j;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2063r;
import com.facebook.internal.C2079x;
import com.facebook.p094a.C1904g;
import com.facebook.p094a.p095a.C1809a;
import com.facebook.p094a.p096b.C1830b;
import com.facebook.p094a.p102g.C1909d;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.facebook.a.d.a */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d/a.class */
public class C1855a {

    /* renamed from: c */
    private static volatile ScheduledFuture f5642c;

    /* renamed from: f */
    private static volatile C1876i f5645f;

    /* renamed from: h */
    private static String f5647h;

    /* renamed from: i */
    private static long f5648i;

    /* renamed from: k */
    private static WeakReference<Activity> f5650k;

    /* renamed from: a */
    private static final String f5640a = C1855a.class.getCanonicalName();

    /* renamed from: b */
    private static final ScheduledExecutorService f5641b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: d */
    private static final Object f5643d = new Object();

    /* renamed from: e */
    private static AtomicInteger f5644e = new AtomicInteger(0);

    /* renamed from: g */
    private static AtomicBoolean f5646g = new AtomicBoolean(false);

    /* renamed from: j */
    private static int f5649j = 0;

    /* renamed from: a */
    public static void m16088a(Activity activity) {
        f5641b.execute(new Runnable() { // from class: com.facebook.a.d.a.3
            @Override // java.lang.Runnable
            public void run() {
                if (C1855a.f5645f == null) {
                    C1876i unused = C1855a.f5645f = C1876i.m16024a();
                }
            }
        });
    }

    /* renamed from: a */
    public static void m16087a(Application application, String str) {
        if (!f5646g.compareAndSet(false, true)) {
            return;
        }
        C2039j.m15624a(C2039j.EnumC2043b.CodelessEvents, new C2039j.AbstractC2042a() { // from class: com.facebook.a.d.a.1
            @Override // com.facebook.internal.C2039j.AbstractC2042a
            /* renamed from: a */
            public void mo15345a(boolean z) {
                if (z) {
                    C1830b.m16161a();
                } else {
                    C1830b.m16157b();
                }
            }
        });
        f5647h = str;
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.a.d.a.2
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                C2063r.m15550a(EnumC2197q.APP_EVENTS, C1855a.f5640a, "onActivityCreated");
                C1862b.m16062b();
                C1855a.m16088a(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                C2063r.m15550a(EnumC2197q.APP_EVENTS, C1855a.f5640a, "onActivityDestroyed");
                C1855a.m16075f(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                C2063r.m15550a(EnumC2197q.APP_EVENTS, C1855a.f5640a, "onActivityPaused");
                C1862b.m16062b();
                C1855a.m16077e(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                C2063r.m15550a(EnumC2197q.APP_EVENTS, C1855a.f5640a, "onActivityResumed");
                C1862b.m16062b();
                C1855a.m16083b(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                C2063r.m15550a(EnumC2197q.APP_EVENTS, C1855a.f5640a, "onActivitySaveInstanceState");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                C1855a.m16078e();
                C2063r.m15550a(EnumC2197q.APP_EVENTS, C1855a.f5640a, "onActivityStarted");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                C2063r.m15550a(EnumC2197q.APP_EVENTS, C1855a.f5640a, "onActivityStopped");
                C1904g.m15928c();
                C1855a.m16076f();
            }
        });
    }

    /* renamed from: a */
    public static boolean m16089a() {
        return f5649j == 0;
    }

    /* renamed from: b */
    public static UUID m16084b() {
        return f5645f != null ? f5645f.m16017g() : null;
    }

    /* renamed from: b */
    public static void m16083b(Activity activity) {
        f5650k = new WeakReference<>(activity);
        f5644e.incrementAndGet();
        m16066o();
        final long currentTimeMillis = System.currentTimeMillis();
        f5648i = currentTimeMillis;
        final String m15444c = C2079x.m15444c(activity);
        C1830b.m16160a(activity);
        C1809a.m16229a(activity);
        C1909d.m15904a(activity);
        final Context applicationContext = activity.getApplicationContext();
        f5641b.execute(new Runnable() { // from class: com.facebook.a.d.a.4
            @Override // java.lang.Runnable
            public void run() {
                if (C1855a.f5645f == null) {
                    C1876i unused = C1855a.f5645f = new C1876i(Long.valueOf(currentTimeMillis), null);
                    C1877j.m16009a(m15444c, null, C1855a.f5647h, applicationContext);
                } else if (C1855a.f5645f.m16021c() != null) {
                    long longValue = currentTimeMillis - C1855a.f5645f.m16021c().longValue();
                    if (longValue > C1855a.m16067n() * 1000) {
                        C1877j.m16010a(m15444c, C1855a.f5645f, C1855a.f5647h);
                        C1877j.m16009a(m15444c, null, C1855a.f5647h, applicationContext);
                        C1876i unused2 = C1855a.f5645f = new C1876i(Long.valueOf(currentTimeMillis), null);
                    } else if (longValue > 1000) {
                        C1855a.f5645f.m16019e();
                    }
                }
                C1855a.f5645f.m16023a(Long.valueOf(currentTimeMillis));
                C1855a.f5645f.m16014j();
            }
        });
    }

    /* renamed from: c */
    public static Activity m16082c() {
        return f5650k != null ? f5650k.get() : null;
    }

    /* renamed from: e */
    static /* synthetic */ int m16078e() {
        int i = f5649j;
        f5649j = i + 1;
        return i;
    }

    /* renamed from: e */
    public static void m16077e(Activity activity) {
        if (f5644e.decrementAndGet() < 0) {
            f5644e.set(0);
            Log.w(f5640a, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application's onCreate method");
        }
        m16066o();
        final long currentTimeMillis = System.currentTimeMillis();
        final String m15444c = C2079x.m15444c(activity);
        C1830b.m16156b(activity);
        f5641b.execute(new Runnable() { // from class: com.facebook.a.d.a.5
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v16, types: [long] */
            /* JADX WARN: Type inference failed for: r1v4 */
            /* JADX WARN: Type inference failed for: r7v0 */
            /* JADX WARN: Type inference failed for: r7v1 */
            /* JADX WARN: Type inference failed for: r7v2 */
            @Override // java.lang.Runnable
            public void run() {
                ?? r7 = false;
                if (C1855a.f5645f == null) {
                    C1876i unused = C1855a.f5645f = new C1876i(Long.valueOf(currentTimeMillis), null);
                }
                C1855a.f5645f.m16023a(Long.valueOf(currentTimeMillis));
                if (C1855a.f5644e.get() <= 0) {
                    Runnable runnable = new Runnable() { // from class: com.facebook.a.d.a.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (C1855a.f5644e.get() <= 0) {
                                C1877j.m16010a(m15444c, C1855a.f5645f, C1855a.f5647h);
                                C1876i.m16022b();
                                C1876i unused2 = C1855a.f5645f = null;
                            }
                            synchronized (C1855a.f5643d) {
                                ScheduledFuture unused3 = C1855a.f5642c = null;
                            }
                        }
                    };
                    synchronized (C1855a.f5643d) {
                        ScheduledFuture unused2 = C1855a.f5642c = C1855a.f5641b.schedule(runnable, C1855a.m16067n(), TimeUnit.SECONDS);
                    }
                }
                long j = C1855a.f5648i;
                if (j > 0) {
                    r7 = (currentTimeMillis - j) / 1000;
                }
                C1866d.m16057a(m15444c, r7 == true ? 1L : 0L);
                C1855a.f5645f.m16014j();
            }
        });
    }

    /* renamed from: f */
    static /* synthetic */ int m16076f() {
        int i = f5649j;
        f5649j = i - 1;
        return i;
    }

    /* renamed from: f */
    public static void m16075f(Activity activity) {
        C1830b.m16152c(activity);
    }

    /* renamed from: n */
    public static int m16067n() {
        C2048l m15586a = C2050m.m15586a(C2095j.m15356l());
        return m15586a == null ? C1868e.m16052a() : m15586a.m15602d();
    }

    /* renamed from: o */
    private static void m16066o() {
        synchronized (f5643d) {
            if (f5642c != null) {
                f5642c.cancel(false);
            }
            f5642c = null;
        }
    }
}
