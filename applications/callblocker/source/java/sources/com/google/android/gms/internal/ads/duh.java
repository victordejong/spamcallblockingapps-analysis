package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/duh.class */
public final class duh implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private Activity f15780a;

    /* renamed from: b */
    private Context f15781b;

    /* renamed from: h */
    private Runnable f15787h;

    /* renamed from: j */
    private long f15789j;

    /* renamed from: c */
    private final Object f15782c = new Object();

    /* renamed from: d */
    private boolean f15783d = true;

    /* renamed from: e */
    private boolean f15784e = false;
    @GuardedBy("lock")

    /* renamed from: f */
    private final List<duj> f15785f = new ArrayList();
    @GuardedBy("lock")

    /* renamed from: g */
    private final List<duu> f15786g = new ArrayList();

    /* renamed from: i */
    private boolean f15788i = false;

    /* renamed from: a */
    private final void m8557a(Activity activity) {
        synchronized (this.f15782c) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.f15780a = activity;
            }
        }
    }

    /* renamed from: a */
    public final Activity m8558a() {
        return this.f15780a;
    }

    /* renamed from: a */
    public final void m8556a(Application application, Context context) {
        if (!this.f15788i) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                m8557a((Activity) context);
            }
            this.f15781b = application;
            this.f15789j = ((Long) dyx.m8158e().m7876a(edi.f16382ao)).longValue();
            this.f15788i = true;
        }
    }

    /* renamed from: a */
    public final void m8553a(duj dujVar) {
        synchronized (this.f15782c) {
            this.f15785f.add(dujVar);
        }
    }

    /* renamed from: b */
    public final Context m8552b() {
        return this.f15781b;
    }

    /* renamed from: b */
    public final void m8550b(duj dujVar) {
        synchronized (this.f15782c) {
            this.f15785f.remove(dujVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f15782c) {
            if (this.f15780a == null) {
                return;
            }
            if (this.f15780a.equals(activity)) {
                this.f15780a = null;
            }
            Iterator<duu> it = this.f15786g.iterator();
            while (it.hasNext()) {
                try {
                    if (it.next().m8525c(activity)) {
                        it.remove();
                    }
                } catch (Exception e) {
                    C2341q.m14740g().m7095a(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                    C3645yb.m6748c("", e);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m8557a(activity);
        synchronized (this.f15782c) {
            for (duu duuVar : this.f15786g) {
                try {
                    duuVar.m8526b(activity);
                } catch (Exception e) {
                    C2341q.m14740g().m7095a(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    C3645yb.m6748c("", e);
                }
            }
        }
        this.f15784e = true;
        if (this.f15787h != null) {
            C3567ve.f17498a.removeCallbacks(this.f15787h);
        }
        cnz cnzVar = C3567ve.f17498a;
        dug dugVar = new dug(this);
        this.f15787h = dugVar;
        cnzVar.postDelayed(dugVar, this.f15789j);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean z = false;
        m8557a(activity);
        this.f15784e = false;
        if (!this.f15783d) {
            z = true;
        }
        this.f15783d = true;
        if (this.f15787h != null) {
            C3567ve.f17498a.removeCallbacks(this.f15787h);
        }
        synchronized (this.f15782c) {
            for (duu duuVar : this.f15786g) {
                try {
                    duuVar.m8527a(activity);
                } catch (Exception e) {
                    C2341q.m14740g().m7095a(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    C3645yb.m6748c("", e);
                }
            }
            if (z) {
                for (duj dujVar : this.f15785f) {
                    try {
                        dujVar.mo7056a(true);
                    } catch (Exception e2) {
                        C3645yb.m6748c("", e2);
                    }
                }
            } else {
                C3556uu.m6751b("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m8557a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
