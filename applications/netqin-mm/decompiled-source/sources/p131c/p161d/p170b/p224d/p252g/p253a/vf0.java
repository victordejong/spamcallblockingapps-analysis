package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzdvo;
import com.google.android.gms.internal.ads.zzrh;
import com.google.android.gms.internal.ads.zzrw;
import com.google.android.gms.internal.ads.zzwm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: c.d.b.d.g.a.vf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/vf0.class */
public final class vf0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public Activity f15850a;

    /* renamed from: b */
    public Context f15851b;

    /* renamed from: h */
    public Runnable f15857h;

    /* renamed from: j */
    public long f15859j;

    /* renamed from: c */
    public final Object f15852c = new Object();

    /* renamed from: d */
    public boolean f15853d = true;

    /* renamed from: e */
    public boolean f15854e = false;

    /* renamed from: f */
    public final List<zzrh> f15855f = new ArrayList();

    /* renamed from: g */
    public final List<zzrw> f15856g = new ArrayList();

    /* renamed from: i */
    public boolean f15858i = false;

    /* renamed from: a */
    public final Activity m26199a() {
        return this.f15850a;
    }

    /* renamed from: a */
    public final void m26198a(Activity activity) {
        synchronized (this.f15852c) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.f15850a = activity;
            }
        }
    }

    /* renamed from: a */
    public final void m26197a(Application application, Context context) {
        if (!this.f15858i) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                m26198a((Activity) context);
            }
            this.f15851b = application;
            this.f15859j = ((Long) zzwm.m11166e().m16921a(zzabb.f23875q0)).longValue();
            this.f15858i = true;
        }
    }

    /* renamed from: a */
    public final void m26194a(zzrh zzrhVar) {
        synchronized (this.f15852c) {
            this.f15855f.add(zzrhVar);
        }
    }

    /* renamed from: b */
    public final Context m26193b() {
        return this.f15851b;
    }

    /* renamed from: b */
    public final void m26191b(zzrh zzrhVar) {
        synchronized (this.f15852c) {
            this.f15855f.remove(zzrhVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f15852c) {
            try {
                if (this.f15850a != null) {
                    if (this.f15850a.equals(activity)) {
                        this.f15850a = null;
                    }
                    Iterator<zzrw> it = this.f15856g.iterator();
                    while (it.hasNext()) {
                        try {
                            if (it.next().m11481a(activity)) {
                                it.remove();
                            }
                        } catch (Exception e) {
                            zzp.m17965g().m16188a(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                            zzbbq.m15855b("", e);
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
        m26198a(activity);
        synchronized (this.f15852c) {
            try {
                for (zzrw zzrwVar : this.f15856g) {
                    try {
                        zzrwVar.onActivityPaused(activity);
                    } catch (Exception e) {
                        zzp.m17965g().m16188a(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                        zzbbq.m15855b("", e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f15854e = true;
        Runnable runnable = this.f15857h;
        if (runnable != null) {
            zzayu.f24665h.removeCallbacks(runnable);
        }
        zzdvo zzdvoVar = zzayu.f24665h;
        wf0 wf0Var = new wf0(this);
        this.f15857h = wf0Var;
        zzdvoVar.postDelayed(wf0Var, this.f15859j);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m26198a(activity);
        this.f15854e = false;
        boolean z = this.f15853d;
        this.f15853d = true;
        Runnable runnable = this.f15857h;
        if (runnable != null) {
            zzayu.f24665h.removeCallbacks(runnable);
        }
        synchronized (this.f15852c) {
            try {
                for (zzrw zzrwVar : this.f15856g) {
                    try {
                        zzrwVar.onActivityResumed(activity);
                    } catch (Exception e) {
                        zzp.m17965g().m16188a(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                        zzbbq.m15855b("", e);
                    }
                }
                if (!z) {
                    for (zzrh zzrhVar : this.f15855f) {
                        try {
                            zzrhVar.mo11506a(true);
                        } catch (Exception e2) {
                            zzbbq.m15855b("", e2);
                        }
                    }
                } else {
                    zzbbq.m15858a("App is still foreground.");
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
        m26198a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
