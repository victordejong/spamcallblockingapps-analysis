package com.facebook.appevents.f;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import com.facebook.appevents.b.b;
import com.facebook.appevents.g;
import com.facebook.appevents.j.d;
import com.facebook.internal.ae;
import com.facebook.internal.l;
import com.facebook.internal.p;
import com.facebook.internal.q;
import com.facebook.internal.x;
import com.facebook.m;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19544a = "com.facebook.appevents.f.a";

    /* renamed from: c  reason: collision with root package name */
    private static volatile ScheduledFuture f19546c;
    private static volatile g f;
    private static String h;
    private static long i;
    private static WeakReference<Activity> k;

    /* renamed from: b  reason: collision with root package name */
    private static final ScheduledExecutorService f19545b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f19547d = new Object();
    private static AtomicInteger e = new AtomicInteger(0);
    private static AtomicBoolean g = new AtomicBoolean(false);
    private static int j = 0;

    public static void a(Activity activity) {
        k = new WeakReference<>(activity);
        e.incrementAndGet();
        o();
        final long currentTimeMillis = System.currentTimeMillis();
        i = currentTimeMillis;
        final String c2 = ae.c(activity);
        b.a(activity);
        com.facebook.appevents.a.a.a(activity);
        d.a(activity);
        final Context applicationContext = activity.getApplicationContext();
        f19545b.execute(new Runnable() { // from class: com.facebook.appevents.f.a.4
            @Override // java.lang.Runnable
            public final void run() {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        if (a.f == null) {
                            g unused = a.f = new g(Long.valueOf(currentTimeMillis), null);
                            h.a(c2, a.h, applicationContext);
                        } else if (a.f.f19564b != null) {
                            long longValue = currentTimeMillis - a.f.f19564b.longValue();
                            if (longValue > a.j() * 1000) {
                                h.a(c2, a.f, a.h);
                                h.a(c2, a.h, applicationContext);
                                g unused2 = a.f = new g(Long.valueOf(currentTimeMillis), null);
                            } else if (longValue > 1000) {
                                a.f.f19565c++;
                            }
                        }
                        a.f.f19564b = Long.valueOf(currentTimeMillis);
                        a.f.a();
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        });
    }

    public static void a(Application application, String str) {
        if (g.compareAndSet(false, true)) {
            l.a(l.b.CodelessEvents, new l.a() { // from class: com.facebook.appevents.f.a.1
                @Override // com.facebook.internal.l.a
                public final void a(boolean z) {
                    if (z) {
                        b.a();
                    } else {
                        b.b();
                    }
                }
            });
            h = str;
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.appevents.f.a.2
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityCreated(Activity activity, Bundle bundle) {
                    x.a(m.APP_EVENTS, a.f19544a, "onActivityCreated");
                    b.b();
                    a.c();
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityDestroyed(Activity activity) {
                    x.a(m.APP_EVENTS, a.f19544a, "onActivityDestroyed");
                    b.c(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityPaused(Activity activity) {
                    x.a(m.APP_EVENTS, a.f19544a, "onActivityPaused");
                    b.b();
                    a.b(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityResumed(Activity activity) {
                    x.a(m.APP_EVENTS, a.f19544a, "onActivityResumed");
                    b.b();
                    a.a(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    x.a(m.APP_EVENTS, a.f19544a, "onActivitySaveInstanceState");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStarted(Activity activity) {
                    a.f();
                    x.a(m.APP_EVENTS, a.f19544a, "onActivityStarted");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStopped(Activity activity) {
                    x.a(m.APP_EVENTS, a.f19544a, "onActivityStopped");
                    g.b();
                    a.g();
                }
            });
        }
    }

    public static boolean a() {
        return j == 0;
    }

    public static UUID b() {
        if (f != null) {
            return f.f;
        }
        return null;
    }

    static /* synthetic */ void b(Activity activity) {
        if (e.decrementAndGet() < 0) {
            e.set(0);
            Log.w(f19544a, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application's onCreate method");
        }
        o();
        final long currentTimeMillis = System.currentTimeMillis();
        final String c2 = ae.c(activity);
        b.b(activity);
        f19545b.execute(new Runnable() { // from class: com.facebook.appevents.f.a.5
            @Override // java.lang.Runnable
            public final void run() {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        if (a.f == null) {
                            g unused = a.f = new g(Long.valueOf(currentTimeMillis), null);
                        }
                        a.f.f19564b = Long.valueOf(currentTimeMillis);
                        if (a.e.get() <= 0) {
                            Runnable runnable = new Runnable() { // from class: com.facebook.appevents.f.a.5.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (!com.facebook.internal.b.b.a.a(this)) {
                                        try {
                                            if (a.f == null) {
                                                g unused2 = a.f = new g(Long.valueOf(currentTimeMillis), null);
                                            }
                                            if (a.e.get() <= 0) {
                                                h.a(c2, a.f, a.h);
                                                SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(com.facebook.g.i()).edit();
                                                edit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
                                                edit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
                                                edit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
                                                edit.remove("com.facebook.appevents.SessionInfo.sessionId");
                                                edit.apply();
                                                SharedPreferences.Editor edit2 = PreferenceManager.getDefaultSharedPreferences(com.facebook.g.i()).edit();
                                                edit2.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
                                                edit2.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
                                                edit2.apply();
                                                g unused3 = a.f = null;
                                            }
                                            synchronized (a.f19547d) {
                                                ScheduledFuture unused4 = a.f19546c = null;
                                            }
                                        } catch (Throwable th) {
                                            com.facebook.internal.b.b.a.a(th, this);
                                        }
                                    }
                                }
                            };
                            synchronized (a.f19547d) {
                                ScheduledFuture unused2 = a.f19546c = a.f19545b.schedule(runnable, a.j(), TimeUnit.SECONDS);
                            }
                        }
                        long j2 = a.i;
                        long j3 = 0;
                        if (j2 > 0) {
                            j3 = (currentTimeMillis - j2) / 1000;
                        }
                        d.a(c2, j3);
                        a.f.a();
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        });
    }

    public static void c() {
        f19545b.execute(new Runnable() { // from class: com.facebook.appevents.f.a.3
            @Override // java.lang.Runnable
            public final void run() {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        if (a.f == null) {
                            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(com.facebook.g.i());
                            long j2 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
                            long j3 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
                            i iVar = null;
                            String string = defaultSharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
                            g gVar = null;
                            if (j2 != 0) {
                                gVar = null;
                                if (j3 != 0) {
                                    if (string == null) {
                                        gVar = null;
                                    } else {
                                        g gVar2 = new g(Long.valueOf(j2), Long.valueOf(j3));
                                        gVar2.f19565c = defaultSharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
                                        SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(com.facebook.g.i());
                                        if (defaultSharedPreferences2.contains("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage")) {
                                            iVar = new i(defaultSharedPreferences2.getString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", null), defaultSharedPreferences2.getBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", false));
                                        }
                                        gVar2.e = iVar;
                                        gVar2.f19566d = Long.valueOf(System.currentTimeMillis());
                                        gVar2.f = UUID.fromString(string);
                                        gVar = gVar2;
                                    }
                                }
                            }
                            g unused = a.f = gVar;
                        }
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        });
    }

    public static Activity d() {
        WeakReference<Activity> weakReference = k;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    static /* synthetic */ int f() {
        int i2 = j;
        j = i2 + 1;
        return i2;
    }

    static /* synthetic */ int g() {
        int i2 = j;
        j = i2 - 1;
        return i2;
    }

    static /* synthetic */ int j() {
        p a2 = q.a(com.facebook.g.m());
        if (a2 == null) {
            return 60;
        }
        return a2.f19959b;
    }

    private static void o() {
        synchronized (f19547d) {
            if (f19546c != null) {
                f19546c.cancel(false);
            }
            f19546c = null;
        }
    }
}
