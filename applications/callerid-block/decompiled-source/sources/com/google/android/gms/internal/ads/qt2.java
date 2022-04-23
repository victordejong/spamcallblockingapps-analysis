package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qt2.class */
public final class qt2 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: b */
    private Activity f8269b;

    /* renamed from: c */
    private Context f8270c;

    /* renamed from: i */
    private Runnable f8276i;

    /* renamed from: k */
    private long f8278k;

    /* renamed from: d */
    private final Object f8271d = new Object();

    /* renamed from: e */
    private boolean f8272e = true;

    /* renamed from: f */
    private boolean f8273f = false;
    @GuardedBy("lock")

    /* renamed from: g */
    private final List<rt2> f8274g = new ArrayList();
    @GuardedBy("lock")

    /* renamed from: h */
    private final List<fu2> f8275h = new ArrayList();

    /* renamed from: j */
    private boolean f8277j = false;

    /* renamed from: k */
    private final void m6034k(Activity activity) {
        synchronized (this.f8271d) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.f8269b = activity;
            }
        }
    }

    /* renamed from: a */
    public final void m6044a(Application application, Context context) {
        if (!this.f8277j) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                m6034k((Activity) context);
            }
            this.f8270c = application;
            this.f8278k = ((Long) C1674c.m7906c().m6878b(C1842m3.f7539y0)).longValue();
            this.f8277j = true;
        }
    }

    /* renamed from: b */
    public final void m6043b(rt2 rt2Var) {
        synchronized (this.f8271d) {
            this.f8274g.add(rt2Var);
        }
    }

    /* renamed from: c */
    public final void m6042c(rt2 rt2Var) {
        synchronized (this.f8271d) {
            this.f8274g.remove(rt2Var);
        }
    }

    /* renamed from: d */
    public final Activity m6041d() {
        return this.f8269b;
    }

    /* renamed from: e */
    public final Context m6040e() {
        return this.f8270c;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f8271d) {
            try {
                Activity activity2 = this.f8269b;
                if (activity2 != null) {
                    if (activity2.equals(activity)) {
                        this.f8269b = null;
                    }
                    Iterator<fu2> it = this.f8275h.iterator();
                    while (it.hasNext()) {
                        try {
                            if (it.next().zza()) {
                                it.remove();
                            }
                        } catch (Exception e) {
                            C1407r.m8916h().m4590g(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                            C1894po.m6182d("", e);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m6034k(activity);
        synchronized (this.f8271d) {
            try {
                for (fu2 fu2Var : this.f8275h) {
                    try {
                        fu2Var.m7441b();
                    } catch (Exception e) {
                        C1407r.m8916h().m4590g(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                        C1894po.m6182d("", e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f8273f = true;
        Runnable runnable = this.f8276i;
        if (runnable != null) {
            C1433l1.f5594i.removeCallbacks(runnable);
        }
        tv1 tv1Var = C1433l1.f5594i;
        ot2 ot2Var = new ot2(this);
        this.f8276i = ot2Var;
        tv1Var.postDelayed(ot2Var, this.f8278k);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m6034k(activity);
        this.f8273f = false;
        boolean z = this.f8272e;
        this.f8272e = true;
        Runnable runnable = this.f8276i;
        if (runnable != null) {
            C1433l1.f5594i.removeCallbacks(runnable);
        }
        synchronized (this.f8271d) {
            try {
                for (fu2 fu2Var : this.f8275h) {
                    try {
                        fu2Var.m7440c();
                    } catch (Exception e) {
                        C1407r.m8916h().m4590g(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                        C1894po.m6182d("", e);
                    }
                }
                if (!z) {
                    for (rt2 rt2Var : this.f8274g) {
                        try {
                            rt2Var.m5860b(true);
                        } catch (Exception e2) {
                            C1894po.m6182d("", e2);
                        }
                    }
                } else {
                    C1894po.m6185a("App is still foreground.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m6034k(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
