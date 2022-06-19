package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@TargetApi(14)
/* renamed from: com.google.android.gms.internal.ads.ik */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ik.class */
public final class C6593ik implements Application.ActivityLifecycleCallbacks {

    /* renamed from: d */
    private Activity f24303d;

    /* renamed from: e */
    private Context f24304e;

    /* renamed from: k */
    private Runnable f24310k;

    /* renamed from: m */
    private long f24312m;

    /* renamed from: f */
    private final Object f24305f = new Object();

    /* renamed from: g */
    private boolean f24306g = true;

    /* renamed from: h */
    private boolean f24307h = false;

    /* renamed from: i */
    private final List<AbstractC6630jk> f24308i = new ArrayList();

    /* renamed from: j */
    private final List<AbstractC7185yk> f24309j = new ArrayList();

    /* renamed from: l */
    private boolean f24311l = false;

    /* renamed from: k */
    private final void m14362k(Activity activity) {
        synchronized (this.f24305f) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.f24303d = activity;
            }
        }
    }

    /* renamed from: f */
    public final void m14367f(Application application, Context context) {
        if (!this.f24311l) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                m14362k((Activity) context);
            }
            this.f24304e = application;
            this.f24312m = ((Long) C7192yr.m8714c().m14263c(C6679kw.f25460D0)).longValue();
            this.f24311l = true;
        }
    }

    /* renamed from: g */
    public final void m14366g(AbstractC6630jk abstractC6630jk) {
        synchronized (this.f24305f) {
            this.f24308i.add(abstractC6630jk);
        }
    }

    /* renamed from: h */
    public final void m14365h(AbstractC6630jk abstractC6630jk) {
        synchronized (this.f24305f) {
            this.f24308i.remove(abstractC6630jk);
        }
    }

    /* renamed from: i */
    public final Activity m14364i() {
        return this.f24303d;
    }

    /* renamed from: j */
    public final Context m14363j() {
        return this.f24304e;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f24305f) {
            Activity activity2 = this.f24303d;
            if (activity2 != null) {
                if (activity2.equals(activity)) {
                    this.f24303d = null;
                }
                Iterator<AbstractC7185yk> it = this.f24309j.iterator();
                while (it.hasNext()) {
                    try {
                        if (it.next().zza()) {
                            it.remove();
                        }
                    } catch (Exception e) {
                        C5667s.m18156h().m12235k(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        ei0.m15466d("", e);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m14362k(activity);
        synchronized (this.f24305f) {
            for (AbstractC7185yk abstractC7185yk : this.f24309j) {
                try {
                    abstractC7185yk.m8807b();
                } catch (Exception e) {
                    C5667s.m18156h().m12235k(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    ei0.m15466d("", e);
                }
            }
        }
        this.f24307h = true;
        Runnable runnable = this.f24310k;
        if (runnable != null) {
            C5679c2.f18451a.removeCallbacks(runnable);
        }
        au2 au2Var = C5679c2.f18451a;
        RunnableC6555hk runnableC6555hk = new RunnableC6555hk(this);
        this.f24310k = runnableC6555hk;
        au2Var.postDelayed(runnableC6555hk, this.f24312m);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m14362k(activity);
        this.f24307h = false;
        boolean z = this.f24306g;
        this.f24306g = true;
        Runnable runnable = this.f24310k;
        if (runnable != null) {
            C5679c2.f18451a.removeCallbacks(runnable);
        }
        synchronized (this.f24305f) {
            for (AbstractC7185yk abstractC7185yk : this.f24309j) {
                try {
                    abstractC7185yk.m8806c();
                } catch (Exception e) {
                    C5667s.m18156h().m12235k(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    ei0.m15466d("", e);
                }
            }
            if (!z) {
                for (AbstractC6630jk abstractC6630jk : this.f24308i) {
                    try {
                        abstractC6630jk.mo9939b(true);
                    } catch (Exception e2) {
                        ei0.m15466d("", e2);
                    }
                }
            } else {
                ei0.m15469a("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m14362k(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
