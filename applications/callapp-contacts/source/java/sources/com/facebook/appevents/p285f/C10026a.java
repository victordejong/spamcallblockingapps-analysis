package com.facebook.appevents.p285f;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import com.facebook.C10181g;
import com.facebook.EnumC10396m;
import com.facebook.appevents.C10046g;
import com.facebook.appevents.p279a.C9961a;
import com.facebook.appevents.p280b.C9982b;
import com.facebook.appevents.p289j.C10088d;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10291l;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.C10336x;
import com.facebook.internal.p299b.p301b.C10249a;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.facebook.appevents.f.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/a.class */
public class C10026a {

    /* renamed from: a */
    private static final String f33301a = "com.facebook.appevents.f.a";

    /* renamed from: c */
    private static volatile ScheduledFuture f33303c;

    /* renamed from: f */
    private static volatile C10042g f33306f;

    /* renamed from: h */
    private static String f33308h;

    /* renamed from: i */
    private static long f33309i;

    /* renamed from: k */
    private static WeakReference<Activity> f33311k;

    /* renamed from: b */
    private static final ScheduledExecutorService f33302b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: d */
    private static final Object f33304d = new Object();

    /* renamed from: e */
    private static AtomicInteger f33305e = new AtomicInteger(0);

    /* renamed from: g */
    private static AtomicBoolean f33307g = new AtomicBoolean(false);

    /* renamed from: j */
    private static int f33310j = 0;

    /* renamed from: a */
    public static void m23581a(Activity activity) {
        f33311k = new WeakReference<>(activity);
        f33305e.incrementAndGet();
        m23562o();
        final long currentTimeMillis = System.currentTimeMillis();
        f33309i = currentTimeMillis;
        final String m23202c = C10213ae.m23202c(activity);
        C9982b.m23687a(activity);
        C9961a.m23746a(activity);
        C10088d.m23431a(activity);
        final Context applicationContext = activity.getApplicationContext();
        f33302b.execute(new Runnable() { // from class: com.facebook.appevents.f.a.4
            @Override // java.lang.Runnable
            public final void run() {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    if (C10026a.f33306f == null) {
                        C10042g unused = C10026a.f33306f = new C10042g(Long.valueOf(currentTimeMillis), null);
                        C10043h.m23541a(m23202c, C10026a.f33308h, applicationContext);
                    } else if (C10026a.f33306f.f33328b != null) {
                        long longValue = currentTimeMillis - C10026a.f33306f.f33328b.longValue();
                        if (longValue > C10026a.m23567j() * 1000) {
                            C10043h.m23542a(m23202c, C10026a.f33306f, C10026a.f33308h);
                            C10043h.m23541a(m23202c, C10026a.f33308h, applicationContext);
                            C10042g unused2 = C10026a.f33306f = new C10042g(Long.valueOf(currentTimeMillis), null);
                        } else if (longValue > 1000) {
                            C10026a.f33306f.f33329c++;
                        }
                    }
                    C10026a.f33306f.f33328b = Long.valueOf(currentTimeMillis);
                    C10026a.f33306f.m23546a();
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m23580a(Application application, String str) {
        if (!f33307g.compareAndSet(false, true)) {
            return;
        }
        C10291l.m23050a(C10291l.EnumC10293b.CodelessEvents, new C10291l.AbstractC10292a() { // from class: com.facebook.appevents.f.a.1
            @Override // com.facebook.internal.C10291l.AbstractC10292a
            /* renamed from: a */
            public final void mo23045a(boolean z) {
                if (z) {
                    C9982b.m23688a();
                } else {
                    C9982b.m23684b();
                }
            }
        });
        f33308h = str;
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.appevents.f.a.2
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity, Bundle bundle) {
                C10336x.m22993a(EnumC10396m.APP_EVENTS, C10026a.f33301a, "onActivityCreated");
                C10033b.m23557b();
                C10026a.m23575c();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(Activity activity) {
                C10336x.m22993a(EnumC10396m.APP_EVENTS, C10026a.f33301a, "onActivityDestroyed");
                C9982b.m23680c(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity) {
                C10336x.m22993a(EnumC10396m.APP_EVENTS, C10026a.f33301a, "onActivityPaused");
                C10033b.m23557b();
                C10026a.m23576b(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity) {
                C10336x.m22993a(EnumC10396m.APP_EVENTS, C10026a.f33301a, "onActivityResumed");
                C10033b.m23557b();
                C10026a.m23581a(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                C10336x.m22993a(EnumC10396m.APP_EVENTS, C10026a.f33301a, "onActivitySaveInstanceState");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(Activity activity) {
                C10026a.m23571f();
                C10336x.m22993a(EnumC10396m.APP_EVENTS, C10026a.f33301a, "onActivityStarted");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity) {
                C10336x.m22993a(EnumC10396m.APP_EVENTS, C10026a.f33301a, "onActivityStopped");
                C10046g.m23533b();
                C10026a.m23570g();
            }
        });
    }

    /* renamed from: a */
    public static boolean m23582a() {
        return f33310j == 0;
    }

    /* renamed from: b */
    public static UUID m23577b() {
        if (f33306f != null) {
            return f33306f.f33332f;
        }
        return null;
    }

    /* renamed from: b */
    static /* synthetic */ void m23576b(Activity activity) {
        if (f33305e.decrementAndGet() < 0) {
            f33305e.set(0);
            Log.w(f33301a, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application's onCreate method");
        }
        m23562o();
        final long currentTimeMillis = System.currentTimeMillis();
        final String m23202c = C10213ae.m23202c(activity);
        C9982b.m23683b(activity);
        f33302b.execute(new Runnable() { // from class: com.facebook.appevents.f.a.5
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v17, types: [long] */
            /* JADX WARN: Type inference failed for: r11v0 */
            /* JADX WARN: Type inference failed for: r11v1 */
            /* JADX WARN: Type inference failed for: r11v2 */
            /* JADX WARN: Type inference failed for: r1v5 */
            @Override // java.lang.Runnable
            public final void run() {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    if (C10026a.f33306f == null) {
                        C10042g unused = C10026a.f33306f = new C10042g(Long.valueOf(currentTimeMillis), null);
                    }
                    C10026a.f33306f.f33328b = Long.valueOf(currentTimeMillis);
                    if (C10026a.f33305e.get() <= 0) {
                        Runnable runnable = new Runnable() { // from class: com.facebook.appevents.f.a.5.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (C10249a.m23108a(this)) {
                                    return;
                                }
                                try {
                                    if (C10026a.f33306f == null) {
                                        C10042g unused2 = C10026a.f33306f = new C10042g(Long.valueOf(currentTimeMillis), null);
                                    }
                                    if (C10026a.f33305e.get() <= 0) {
                                        C10043h.m23542a(m23202c, C10026a.f33306f, C10026a.f33308h);
                                        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C10181g.m23290i()).edit();
                                        edit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
                                        edit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
                                        edit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
                                        edit.remove("com.facebook.appevents.SessionInfo.sessionId");
                                        edit.apply();
                                        SharedPreferences.Editor edit2 = PreferenceManager.getDefaultSharedPreferences(C10181g.m23290i()).edit();
                                        edit2.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
                                        edit2.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
                                        edit2.apply();
                                        C10042g unused3 = C10026a.f33306f = null;
                                    }
                                    synchronized (C10026a.f33304d) {
                                        ScheduledFuture unused4 = C10026a.f33303c = null;
                                    }
                                } catch (Throwable th) {
                                    C10249a.m23106a(th, this);
                                }
                            }
                        };
                        synchronized (C10026a.f33304d) {
                            ScheduledFuture unused2 = C10026a.f33303c = C10026a.f33302b.schedule(runnable, C10026a.m23567j(), TimeUnit.SECONDS);
                        }
                    }
                    long j = C10026a.f33309i;
                    ?? r11 = false;
                    if (j > 0) {
                        r11 = (currentTimeMillis - j) / 1000;
                    }
                    C10037d.m23552a(m23202c, r11 == true ? 1L : 0L);
                    C10026a.f33306f.m23546a();
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
    }

    /* renamed from: c */
    public static void m23575c() {
        f33302b.execute(new Runnable() { // from class: com.facebook.appevents.f.a.3
            @Override // java.lang.Runnable
            public final void run() {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    if (C10026a.f33306f != null) {
                        return;
                    }
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C10181g.m23290i());
                    long j = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
                    long j2 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
                    String string = defaultSharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
                    C10042g c10042g = null;
                    if (j != 0) {
                        c10042g = null;
                        if (j2 != 0) {
                            if (string == null) {
                                c10042g = null;
                            } else {
                                C10042g c10042g2 = new C10042g(Long.valueOf(j), Long.valueOf(j2));
                                c10042g2.f33329c = defaultSharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
                                SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(C10181g.m23290i());
                                c10042g2.f33331e = !defaultSharedPreferences2.contains("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage") ? null : new C10044i(defaultSharedPreferences2.getString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", null), defaultSharedPreferences2.getBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", false));
                                c10042g2.f33330d = Long.valueOf(System.currentTimeMillis());
                                c10042g2.f33332f = UUID.fromString(string);
                                c10042g = c10042g2;
                            }
                        }
                    }
                    C10042g unused = C10026a.f33306f = c10042g;
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
    }

    /* renamed from: d */
    public static Activity m23573d() {
        WeakReference<Activity> weakReference = f33311k;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: f */
    static /* synthetic */ int m23571f() {
        int i = f33310j;
        f33310j = i + 1;
        return i;
    }

    /* renamed from: g */
    static /* synthetic */ int m23570g() {
        int i = f33310j;
        f33310j = i - 1;
        return i;
    }

    /* renamed from: j */
    static /* synthetic */ int m23567j() {
        C10302p m23028a = C10306q.m23028a(C10181g.m23286m());
        if (m23028a == null) {
            return 60;
        }
        return m23028a.f33845b;
    }

    /* renamed from: o */
    private static void m23562o() {
        synchronized (f33304d) {
            if (f33303c != null) {
                f33303c.cancel(false);
            }
            f33303c = null;
        }
    }
}
