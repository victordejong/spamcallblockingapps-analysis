package com.google.firebase.perf.metrics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.firebase.perf.provider.FirebasePerfProvider;
import com.google.firebase.perf.session.SessionManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p015b0.C0713a;
import p104g6.C2905a;
import p158l6.RunnableC3506c;
import p169m6.C3652e;
import p180n6.C3729e;
import p191o6.C3924k;
import p191o6.C3929m;
import p191o6.EnumC3901d;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/AppStartTrace.class */
public class AppStartTrace implements Application.ActivityLifecycleCallbacks {

    /* renamed from: j */
    public static final long f6974j = TimeUnit.MINUTES.toMicros(1);

    /* renamed from: k */
    public static volatile AppStartTrace f6975k;

    /* renamed from: b */
    public final C3652e f6977b;

    /* renamed from: c */
    public final C0713a f6978c;

    /* renamed from: d */
    public Context f6979d;

    /* renamed from: a */
    public boolean f6976a = false;

    /* renamed from: e */
    public boolean f6980e = false;

    /* renamed from: f */
    public C3729e f6981f = null;

    /* renamed from: g */
    public C3729e f6982g = null;

    /* renamed from: h */
    public C3729e f6983h = null;

    /* renamed from: i */
    public boolean f6984i = false;

    /* renamed from: com.google.firebase.perf.metrics.AppStartTrace$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/AppStartTrace$a.class */
    public static class RunnableC1851a implements Runnable {

        /* renamed from: a */
        public final AppStartTrace f6985a;

        public RunnableC1851a(AppStartTrace appStartTrace) {
            this.f6985a = appStartTrace;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppStartTrace appStartTrace = this.f6985a;
            if (appStartTrace.f6981f == null) {
                appStartTrace.f6984i = true;
            }
        }
    }

    public AppStartTrace(C3652e c3652e, C0713a c0713a) {
        this.f6977b = c3652e;
        this.f6978c = c0713a;
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
            if (!this.f6984i && this.f6981f == null) {
                new WeakReference(activity);
                Objects.requireNonNull(this.f6978c);
                this.f6981f = new C3729e();
                if (FirebasePerfProvider.getAppStartTime().m1839b(this.f6981f) > f6974j) {
                    this.f6980e = true;
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
            if (!this.f6984i && this.f6983h == null && !this.f6980e) {
                new WeakReference(activity);
                Objects.requireNonNull(this.f6978c);
                this.f6983h = new C3729e();
                C3729e appStartTime = FirebasePerfProvider.getAppStartTime();
                C2905a m2869b = C2905a.m2869b();
                m2869b.m2870a("onResume(): " + activity.getClass().getName() + ": " + appStartTime.m1839b(this.f6983h) + " microseconds");
                C3929m.C3931b m1604R = C3929m.m1604R();
                m1604R.m4282n();
                C3929m.m1602z((C3929m) m1604R.f7078b, "_as");
                m1604R.m1600r(appStartTime.f12119a);
                m1604R.m1599s(appStartTime.m1839b(this.f6983h));
                ArrayList arrayList = new ArrayList(3);
                C3929m.C3931b m1604R2 = C3929m.m1604R();
                m1604R2.m4282n();
                C3929m.m1602z((C3929m) m1604R2.f7078b, "_astui");
                m1604R2.m1600r(appStartTime.f12119a);
                m1604R2.m1599s(appStartTime.m1839b(this.f6981f));
                arrayList.add(m1604R2.m4284l());
                C3929m.C3931b m1604R3 = C3929m.m1604R();
                m1604R3.m4282n();
                C3929m.m1602z((C3929m) m1604R3.f7078b, "_astfd");
                m1604R3.m1600r(this.f6981f.f12119a);
                m1604R3.m1599s(this.f6981f.m1839b(this.f6982g));
                arrayList.add(m1604R3.m4284l());
                C3929m.C3931b m1604R4 = C3929m.m1604R();
                m1604R4.m4282n();
                C3929m.m1602z((C3929m) m1604R4.f7078b, "_asti");
                m1604R4.m1600r(this.f6982g.f12119a);
                m1604R4.m1599s(this.f6982g.m1839b(this.f6983h));
                arrayList.add(m1604R4.m4284l());
                m1604R.m4282n();
                C3929m.m1619C((C3929m) m1604R.f7078b, arrayList);
                C3924k m2376a = SessionManager.getInstance().perfSession().m2376a();
                m1604R.m4282n();
                C3929m.m1617E((C3929m) m1604R.f7078b, m2376a);
                C3652e c3652e = this.f6977b;
                c3652e.f11976i.execute(new RunnableC3506c(c3652e, m1604R.m4284l(), EnumC3901d.FOREGROUND_BACKGROUND, 1));
                if (this.f6976a) {
                    synchronized (this) {
                        if (this.f6976a) {
                            ((Application) this.f6979d).unregisterActivityLifecycleCallbacks(this);
                            this.f6976a = false;
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
            if (!this.f6984i && this.f6982g == null && !this.f6980e) {
                Objects.requireNonNull(this.f6978c);
                this.f6982g = new C3729e();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        synchronized (this) {
        }
    }
}
