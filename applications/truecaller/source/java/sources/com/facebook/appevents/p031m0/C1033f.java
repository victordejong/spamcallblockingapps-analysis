package com.facebook.appevents.p031m0;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.facebook.AccessToken;
import com.facebook.appevents.C1091t;
import com.facebook.appevents.C1096x;
import com.facebook.appevents.RunnableC0948b;
import com.facebook.appevents.p025h0.C0964c;
import com.facebook.appevents.p025h0.C0966e;
import com.facebook.appevents.p025h0.ViewTreeObserver$OnGlobalFocusChangeListenerC0967f;
import com.facebook.appevents.p026i0.C0972c;
import com.facebook.appevents.p026i0.C0980i;
import com.facebook.appevents.p026i0.C0981j;
import com.facebook.appevents.p026i0.C0987l;
import com.facebook.appevents.p026i0.C0991m;
import com.facebook.appevents.p029k0.C1022m;
import com.facebook.appevents.p035q0.C1083h;
import com.facebook.internal.C1115a0;
import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.C1143k0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Timer;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import p193e.p1538j.EnumC23248n0;
import s1.z.c.l;
@Metadata(d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0002J\n\u0010 \u001a\u0004\u0018\u00010\rH\u0007J\n\u0010!\u001a\u0004\u0018\u00010\"H\u0007J\b\u0010#\u001a\u00020$H\u0007J\b\u0010%\u001a\u00020$H\u0007J\u0012\u0010&\u001a\u00020\u001f2\b\u0010'\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010(\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020\rH\u0002J\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020\rH\u0002J\u0010\u0010*\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020\rH\u0007J\u001a\u0010+\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020-2\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u000f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0016\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\n \u001b*\u0004\u0018\u00010\u001a0\u001aX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n��¨\u0006."}, d2 = {"Lcom/facebook/appevents/internal/ActivityLifecycleTracker;", "", "()V", "INCORRECT_IMPL_WARNING", "", "INTERRUPTION_THRESHOLD_MILLISECONDS", "", "TAG", "activityReferences", "", "appId", "currActivity", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "currentActivityAppearTime", "currentFuture", "Ljava/util/concurrent/ScheduledFuture;", "currentFutureLock", "currentSession", "Lcom/facebook/appevents/internal/SessionInfo;", "foregroundActivityCount", "Ljava/util/concurrent/atomic/AtomicInteger;", "sessionTimeoutInSeconds", "getSessionTimeoutInSeconds", "()I", "singleThreadExecutor", "Ljava/util/concurrent/ScheduledExecutorService;", "kotlin.jvm.PlatformType", "tracking", "Ljava/util/concurrent/atomic/AtomicBoolean;", "cancelCurrentTask", "", "getCurrentActivity", "getCurrentSessionGuid", "Ljava/util/UUID;", "isInBackground", "", "isTracking", "onActivityCreated", "activity", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "startTracking", "application", "Landroid/app/Application;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.m0.f */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/f.class */
public final class C1033f {

    /* renamed from: a */
    public static final C1033f f2846a = new C1033f();

    /* renamed from: b */
    public static final String f2847b;

    /* renamed from: c */
    public static final ScheduledExecutorService f2848c;

    /* renamed from: d */
    public static volatile ScheduledFuture<?> f2849d;

    /* renamed from: e */
    public static final Object f2850e;

    /* renamed from: f */
    public static final AtomicInteger f2851f;

    /* renamed from: g */
    public static volatile C1044l f2852g;

    /* renamed from: h */
    public static final AtomicBoolean f2853h;

    /* renamed from: i */
    public static String f2854i;

    /* renamed from: j */
    public static long f2855j;

    /* renamed from: k */
    public static int f2856k;

    /* renamed from: l */
    public static WeakReference<Activity> f2857l;

    @Metadata(d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b*\u0001��\b\n\u0018��2\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u000f"}, d2 = {"com/facebook/appevents/internal/ActivityLifecycleTracker$startTracking$2", "Landroid/app/Application$ActivityLifecycleCallbacks;", "onActivityCreated", "", "activity", "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "outState", "onActivityStarted", "onActivityStopped", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.m0.f$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/f$a.class */
    public static final class C1034a implements Application.ActivityLifecycleCallbacks {
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            l.e(activity, "activity");
            C1143k0.C1144a c1144a = C1143k0.f3139e;
            EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
            C1033f c1033f = C1033f.f2846a;
            c1144a.m41729b(enumC23248n0, C1033f.f2847b, "onActivityCreated");
            C1033f c1033f2 = C1033f.f2846a;
            C1033f.f2848c.execute(RunnableC1030c.f2842a);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            l.e(activity, "activity");
            C1143k0.C1144a c1144a = C1143k0.f3139e;
            EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
            C1033f c1033f = C1033f.f2846a;
            c1144a.m41729b(enumC23248n0, C1033f.f2847b, "onActivityDestroyed");
            C1033f c1033f2 = C1033f.f2846a;
            C0980i c0980i = C0980i.f2694a;
            if (C1220a.m41623b(C0980i.class)) {
                return;
            }
            try {
                l.e(activity, "activity");
                C0981j m41946a = C0981j.f2702f.m41946a();
                if (C1220a.m41623b(m41946a)) {
                    return;
                }
                l.e(activity, "activity");
                m41946a.f2709e.remove(Integer.valueOf(activity.hashCode()));
            } catch (Throwable th) {
                C1220a.m41624a(th, C0980i.class);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            l.e(activity, "activity");
            C1143k0.C1144a c1144a = C1143k0.f3139e;
            EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
            C1033f c1033f = C1033f.f2846a;
            c1144a.m41729b(enumC23248n0, C1033f.f2847b, "onActivityPaused");
            C1033f c1033f2 = C1033f.f2846a;
            AtomicInteger atomicInteger = C1033f.f2851f;
            if (atomicInteger.decrementAndGet() < 0) {
                atomicInteger.set(0);
            }
            c1033f2.m41871a();
            final long currentTimeMillis = System.currentTimeMillis();
            final String m41671l = C1168q0.m41671l(activity);
            C0980i c0980i = C0980i.f2694a;
            if (!C1220a.m41623b(C0980i.class)) {
                try {
                    l.e(activity, "activity");
                    if (C0980i.f2699f.get()) {
                        C0981j.f2702f.m41946a().m41947d(activity);
                        C0987l c0987l = C0980i.f2697d;
                        if (c0987l != null && !C1220a.m41623b(c0987l) && c0987l.f2725b.get() != null) {
                            try {
                                Timer timer = c0987l.f2726c;
                                if (timer != null) {
                                    timer.cancel();
                                }
                                c0987l.f2726c = null;
                            } catch (Exception e) {
                            }
                        }
                        SensorManager sensorManager = C0980i.f2696c;
                        if (sensorManager != null) {
                            sensorManager.unregisterListener(C0980i.f2695b);
                        }
                    }
                } catch (Throwable th) {
                    C1220a.m41624a(th, C0980i.class);
                }
            }
            C1033f.f2848c.execute(new Runnable() { // from class: com.facebook.appevents.m0.a
                /* JADX WARN: Type inference failed for: r0v42, types: [long] */
                @Override // java.lang.Runnable
                public final void run() {
                    C1124c0 m41742b;
                    final long j = currentTimeMillis;
                    final String str = m41671l;
                    l.e(str, "$activityName");
                    if (C1033f.f2852g == null) {
                        C1033f.f2852g = new C1044l(Long.valueOf(j), null, null, 4);
                    }
                    C1044l c1044l = C1033f.f2852g;
                    if (c1044l != null) {
                        c1044l.f2879b = Long.valueOf(j);
                    }
                    if (C1033f.f2851f.get() <= 0) {
                        Runnable runnable = new Runnable() { // from class: com.facebook.appevents.m0.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                long j2 = j;
                                String str2 = str;
                                l.e(str2, "$activityName");
                                if (C1033f.f2852g == null) {
                                    C1033f.f2852g = new C1044l(Long.valueOf(j2), null, null, 4);
                                }
                                if (C1033f.f2851f.get() <= 0) {
                                    C1045m c1045m = C1045m.f2884a;
                                    C1045m.m41855d(str2, C1033f.f2852g, C1033f.f2854i);
                                    C23228f0 c23228f0 = C23228f0.f64291a;
                                    SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C23228f0.m7354a()).edit();
                                    edit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
                                    edit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
                                    edit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
                                    edit.remove("com.facebook.appevents.SessionInfo.sessionId");
                                    edit.apply();
                                    SharedPreferences.Editor edit2 = PreferenceManager.getDefaultSharedPreferences(C23228f0.m7354a()).edit();
                                    edit2.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
                                    edit2.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
                                    edit2.apply();
                                    C1033f.f2852g = null;
                                }
                                synchronized (C1033f.f2850e) {
                                    C1033f.f2849d = null;
                                }
                            }
                        };
                        synchronized (C1033f.f2850e) {
                            ScheduledExecutorService scheduledExecutorService = C1033f.f2848c;
                            C1127d0 c1127d0 = C1127d0.f3107a;
                            C23228f0 c23228f0 = C23228f0.f64291a;
                            C1033f.f2849d = scheduledExecutorService.schedule(runnable, C1127d0.m41742b(C23228f0.m7353b()) == null ? 60 : m41742b.f3092b, TimeUnit.SECONDS);
                        }
                    }
                    long j2 = C1033f.f2855j;
                    char c = j2 > 0 ? (j - j2) / 1000 : (char) 0;
                    C1038i c1038i = C1038i.f2863a;
                    C23228f0 c23228f02 = C23228f0.f64291a;
                    Context m7354a = C23228f0.m7354a();
                    String m7353b = C23228f0.m7353b();
                    C1127d0 c1127d02 = C1127d0.f3107a;
                    C1124c0 m41738f = C1127d0.m41738f(m7353b, false);
                    if (m41738f != null && m41738f.f3095e && c > 0) {
                        C1096x c1096x = new C1096x(m7354a, (String) null, (AccessToken) null);
                        l.e(c1096x, "loggerImpl");
                        Bundle bundle = new Bundle(1);
                        bundle.putCharSequence("fb_aa_time_spent_view_name", str);
                        double d = c;
                        if (C23228f0.m7352c() && !C1220a.m41623b(c1096x)) {
                            try {
                                c1096x.m41762f("fb_aa_time_spent_on_view", Double.valueOf(d), bundle, false, C1033f.m41870b());
                            } catch (Throwable th2) {
                                C1220a.m41624a(th2, c1096x);
                            }
                        }
                    }
                    C1044l c1044l2 = C1033f.f2852g;
                    if (c1044l2 == null) {
                        return;
                    }
                    c1044l2.m41859a();
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            Boolean bool;
            ScheduledFuture<?> scheduledFuture;
            l.e(activity, "activity");
            C1143k0.C1144a c1144a = C1143k0.f3139e;
            EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
            C1033f c1033f = C1033f.f2846a;
            c1144a.m41729b(enumC23248n0, C1033f.f2847b, "onActivityResumed");
            C1033f c1033f2 = C1033f.f2846a;
            l.e(activity, "activity");
            C1033f.f2857l = new WeakReference<>(activity);
            C1033f.f2851f.incrementAndGet();
            synchronized (C1033f.f2850e) {
                if (C1033f.f2849d != null && (scheduledFuture = C1033f.f2849d) != null) {
                    scheduledFuture.cancel(false);
                }
                bool = null;
                C1033f.f2849d = null;
            }
            final long currentTimeMillis = System.currentTimeMillis();
            C1033f.f2855j = currentTimeMillis;
            final String m41671l = C1168q0.m41671l(activity);
            C0980i c0980i = C0980i.f2694a;
            C0991m c0991m = C0980i.f2695b;
            if (!C1220a.m41623b(C0980i.class)) {
                try {
                    l.e(activity, "activity");
                    if (C0980i.f2699f.get()) {
                        C0981j.f2702f.m41946a().m41949b(activity);
                        Context applicationContext = activity.getApplicationContext();
                        C23228f0 c23228f0 = C23228f0.f64291a;
                        String m7353b = C23228f0.m7353b();
                        C1127d0 c1127d0 = C1127d0.f3107a;
                        C1124c0 m41742b = C1127d0.m41742b(m7353b);
                        if (m41742b != null) {
                            bool = Boolean.valueOf(m41742b.f3098h);
                        }
                        if (!l.a(bool, Boolean.TRUE)) {
                            C1220a.m41623b(C0980i.class);
                        } else {
                            SensorManager sensorManager = (SensorManager) applicationContext.getSystemService("sensor");
                            C0980i.f2696c = sensorManager;
                            if (sensorManager != null) {
                                Sensor defaultSensor = sensorManager.getDefaultSensor(1);
                                C0980i.f2697d = new C0987l(activity);
                                C0972c c0972c = new C0972c(m41742b, m7353b);
                                if (!C1220a.m41623b(c0991m)) {
                                    c0991m.f2730a = c0972c;
                                }
                                SensorManager sensorManager2 = C0980i.f2696c;
                                if (sensorManager2 == null) {
                                    throw new IllegalStateException("Required value was null.".toString());
                                }
                                sensorManager2.registerListener(c0991m, defaultSensor, 2);
                                if (m41742b != null && m41742b.f3098h) {
                                    C0987l c0987l = C0980i.f2697d;
                                    if (c0987l == null) {
                                        throw new IllegalStateException("Required value was null.".toString());
                                    }
                                    c0987l.m41935c();
                                }
                            }
                        }
                        C1220a.m41623b(C0980i.class);
                    }
                } catch (Throwable th) {
                    C1220a.m41624a(th, C0980i.class);
                }
            }
            C0964c c0964c = C0964c.f2655a;
            if (!C1220a.m41623b(C0964c.class)) {
                try {
                    l.e(activity, "activity");
                    try {
                        if (C0964c.f2657c) {
                            C0966e c0966e = C0966e.f2659d;
                            if (!new HashSet(C0966e.m41963a()).isEmpty()) {
                                ViewTreeObserver$OnGlobalFocusChangeListenerC0967f.f2664e.m41956b(activity);
                            }
                        }
                    } catch (Exception e) {
                    }
                } catch (Throwable th2) {
                    C1220a.m41624a(th2, C0964c.class);
                }
            }
            C1083h c1083h = C1083h.f2989a;
            C1083h.m41794c(activity);
            C1022m c1022m = C1022m.f2821a;
            C1022m.m41880a();
            final Context applicationContext2 = activity.getApplicationContext();
            C1033f.f2848c.execute(new Runnable() { // from class: com.facebook.appevents.m0.b
                @Override // java.lang.Runnable
                public final void run() {
                    C1124c0 m41742b2;
                    C1044l c1044l;
                    long j = currentTimeMillis;
                    String str = m41671l;
                    Context context = applicationContext2;
                    l.e(str, "$activityName");
                    C1044l c1044l2 = C1033f.f2852g;
                    Long l = c1044l2 == null ? null : c1044l2.f2879b;
                    if (C1033f.f2852g == null) {
                        C1033f.f2852g = new C1044l(Long.valueOf(j), null, null, 4);
                        C1045m c1045m = C1045m.f2884a;
                        String str2 = C1033f.f2854i;
                        l.d(context, "appContext");
                        C1045m.m41857b(str, null, str2, context);
                    } else if (l != null) {
                        long longValue = j - l.longValue();
                        C1127d0 c1127d02 = C1127d0.f3107a;
                        C23228f0 c23228f02 = C23228f0.f64291a;
                        if (longValue > (C1127d0.m41742b(C23228f0.m7353b()) == null ? 60 : m41742b2.f3092b) * 1000) {
                            C1045m c1045m2 = C1045m.f2884a;
                            C1045m.m41855d(str, C1033f.f2852g, C1033f.f2854i);
                            String str3 = C1033f.f2854i;
                            l.d(context, "appContext");
                            C1045m.m41857b(str, null, str3, context);
                            C1033f.f2852g = new C1044l(Long.valueOf(j), null, null, 4);
                        } else if (longValue > 1000 && (c1044l = C1033f.f2852g) != null) {
                            c1044l.f2881d++;
                        }
                    }
                    C1044l c1044l3 = C1033f.f2852g;
                    if (c1044l3 != null) {
                        c1044l3.f2879b = Long.valueOf(j);
                    }
                    C1044l c1044l4 = C1033f.f2852g;
                    if (c1044l4 == null) {
                        return;
                    }
                    c1044l4.m41859a();
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            l.e(activity, "activity");
            l.e(bundle, "outState");
            C1143k0.C1144a c1144a = C1143k0.f3139e;
            EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
            C1033f c1033f = C1033f.f2846a;
            c1144a.m41729b(enumC23248n0, C1033f.f2847b, "onActivitySaveInstanceState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            l.e(activity, "activity");
            C1033f c1033f = C1033f.f2846a;
            C1033f.f2856k++;
            C1143k0.C1144a c1144a = C1143k0.f3139e;
            EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
            C1033f c1033f2 = C1033f.f2846a;
            c1144a.m41729b(enumC23248n0, C1033f.f2847b, "onActivityStarted");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            l.e(activity, "activity");
            C1143k0.C1144a c1144a = C1143k0.f3139e;
            EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
            C1033f c1033f = C1033f.f2846a;
            c1144a.m41729b(enumC23248n0, C1033f.f2847b, "onActivityStopped");
            C1096x.C1097a c1097a = C1096x.f3028c;
            C1091t c1091t = C1091t.f3016a;
            if (!C1220a.m41623b(C1091t.class)) {
                try {
                    C1091t.f3020e.execute(RunnableC0948b.f2617a);
                } catch (Throwable th) {
                    C1220a.m41624a(th, C1091t.class);
                }
            }
            C1033f c1033f2 = C1033f.f2846a;
            C1033f.f2856k--;
        }
    }

    static {
        String canonicalName = C1033f.class.getCanonicalName();
        String str = canonicalName;
        if (canonicalName == null) {
            str = "com.facebook.appevents.internal.ActivityLifecycleTracker";
        }
        f2847b = str;
        f2848c = Executors.newSingleThreadScheduledExecutor();
        f2850e = new Object();
        f2851f = new AtomicInteger(0);
        f2853h = new AtomicBoolean(false);
    }

    /* renamed from: b */
    public static final UUID m41870b() {
        UUID uuid = null;
        if (f2852g != null) {
            C1044l c1044l = f2852g;
            uuid = c1044l == null ? null : c1044l.f2880c;
        }
        return uuid;
    }

    /* renamed from: c */
    public static final void m41869c(Application application, String str) {
        l.e(application, "application");
        if (!f2853h.compareAndSet(false, true)) {
            return;
        }
        C1115a0 c1115a0 = C1115a0.f3048a;
        C1115a0.m41752a(C1115a0.EnumC1117b.CodelessEvents, C1031d.f2843a);
        f2854i = str;
        application.registerActivityLifecycleCallbacks(new C1034a());
    }

    /* renamed from: a */
    public final void m41871a() {
        ScheduledFuture<?> scheduledFuture;
        synchronized (f2850e) {
            if (f2849d != null && (scheduledFuture = f2849d) != null) {
                scheduledFuture.cancel(false);
            }
            f2849d = null;
        }
    }
}
