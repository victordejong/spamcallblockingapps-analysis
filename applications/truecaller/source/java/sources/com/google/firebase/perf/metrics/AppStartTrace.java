package com.google.firebase.perf.metrics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.firebase.perf.provider.FirebasePerfProvider;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Timer;
import e.m.d.z.m.k;
import e.m.d.z.n.a;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/metrics/AppStartTrace.class */
public class AppStartTrace implements Application.ActivityLifecycleCallbacks {

    /* renamed from: l */
    public static final long f7056l = TimeUnit.MINUTES.toMicros(1);

    /* renamed from: m */
    public static volatile AppStartTrace f7057m;

    /* renamed from: n */
    public static ExecutorService f7058n;

    /* renamed from: b */
    public final k f7060b;

    /* renamed from: c */
    public final a f7061c;

    /* renamed from: d */
    public Context f7062d;

    /* renamed from: j */
    public PerfSession f7068j;

    /* renamed from: a */
    public boolean f7059a = false;

    /* renamed from: e */
    public boolean f7063e = false;

    /* renamed from: f */
    public Timer f7064f = null;

    /* renamed from: g */
    public Timer f7065g = null;

    /* renamed from: h */
    public Timer f7066h = null;

    /* renamed from: i */
    public Timer f7067i = null;

    /* renamed from: k */
    public boolean f7069k = false;

    /* renamed from: com.google.firebase.perf.metrics.AppStartTrace$a */
    /* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/metrics/AppStartTrace$a.class */
    public static class RunnableC2181a implements Runnable {

        /* renamed from: a */
        public final AppStartTrace f7070a;

        public RunnableC2181a(AppStartTrace appStartTrace) {
            this.f7070a = appStartTrace;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppStartTrace appStartTrace = this.f7070a;
            if (appStartTrace.f7065g == null) {
                appStartTrace.f7069k = true;
            }
        }
    }

    public AppStartTrace(k kVar, a aVar, ExecutorService executorService) {
        this.f7060b = kVar;
        this.f7061c = aVar;
        f7058n = executorService;
    }

    @Keep
    public static void setLauncherActivityOnCreateTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnResumeTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnStartTime(String str) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        synchronized (this) {
            if (!this.f7069k && this.f7065g == null) {
                new WeakReference(activity);
                Objects.requireNonNull(this.f7061c);
                this.f7065g = new Timer();
                if (FirebasePerfProvider.getAppStartTime().m38296b(this.f7065g) > f7056l) {
                    this.f7063e = true;
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        synchronized (this) {
            if (!this.f7069k && this.f7067i == null && !this.f7063e) {
                new WeakReference(activity);
                Objects.requireNonNull(this.f7061c);
                this.f7067i = new Timer();
                this.f7064f = FirebasePerfProvider.getAppStartTime();
                this.f7068j = SessionManager.getInstance().perfSession();
                e.m.d.z.i.a b = e.m.d.z.i.a.b();
                b.a("onResume(): " + activity.getClass().getName() + ": " + this.f7064f.m38296b(this.f7067i) + " microseconds");
                f7058n.execute(new e.m.d.z.j.a(this));
                if (this.f7059a) {
                    synchronized (this) {
                        if (this.f7059a) {
                            ((Application) this.f7062d).unregisterActivityLifecycleCallbacks(this);
                            this.f7059a = false;
                        }
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        synchronized (this) {
            if (!this.f7069k && this.f7066h == null && !this.f7063e) {
                Objects.requireNonNull(this.f7061c);
                this.f7066h = new Timer();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        synchronized (this) {
        }
    }
}
