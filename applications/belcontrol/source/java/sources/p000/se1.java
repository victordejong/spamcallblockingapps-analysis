package p000;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import java.lang.ref.WeakReference;
/* renamed from: se1 */
/* loaded from: classes3-dex2jar.jar:se1.class */
public class se1 implements re1 {

    /* renamed from: a */
    public final WeakReference<Application> f8130a;

    /* renamed from: b */
    public final WeakReference<Activity> f8131b;

    /* renamed from: c */
    public boolean f8132c;

    /* renamed from: d */
    public final mf1 f8133d;

    /* renamed from: e */
    public boolean f8134e;

    /* renamed from: se1$b */
    /* loaded from: classes3-dex2jar.jar:se1$b.class */
    public class C1657b implements Application.ActivityLifecycleCallbacks {
        public C1657b() {
            se1.this = r4;
        }

        /* renamed from: a */
        public final boolean m568a(Activity activity) {
            Activity activity2 = (Activity) se1.this.f8131b.get();
            return activity2 != null && activity2.equals(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            try {
                if (se1.this.f8133d.mo1179b()) {
                    Log.d("MoatActivityState", "Activity destroyed: " + activity.getClass() + "@" + activity.hashCode());
                }
                if (!m568a(activity)) {
                    return;
                }
                se1.this.f8134e = false;
                ((Application) se1.this.f8130a.get()).unregisterActivityLifecycleCallbacks(this);
            } catch (Exception e) {
                uf1.m397a(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (se1.this.f8133d.mo1179b()) {
                Log.d("MoatActivityState", "Activity paused: " + activity.getClass() + "@" + activity.hashCode());
            }
            if (m568a(activity)) {
                se1.this.f8134e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (se1.this.f8133d.mo1179b()) {
                Log.d("MoatActivityState", "Activity resumed: " + activity.getClass() + "@" + activity.hashCode());
            }
            if (m568a(activity)) {
                se1.this.f8134e = false;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (se1.this.f8133d.mo1179b()) {
                Log.d("MoatActivityState", "Activity started: " + activity.getClass() + "@" + activity.hashCode());
            }
            if (m568a(activity)) {
                se1.this.f8134e = false;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (se1.this.f8133d.mo1179b()) {
                Log.d("MoatActivityState", "Activity stopped: " + activity.getClass() + "@" + activity.hashCode());
            }
            if (m568a(activity)) {
                se1.this.f8134e = true;
            }
        }
    }

    public se1(Activity activity, mf1 mf1Var) {
        String str;
        tf1.m499a(activity);
        if (mf1Var.mo1179b()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Listening to Activity: ");
            if (activity != null) {
                str = activity.getClass() + "@" + activity.hashCode();
            } else {
                str = "null";
            }
            sb.append(str);
            Log.d("MoatActivityState", sb.toString());
        }
        this.f8130a = new WeakReference<>(activity.getApplication());
        this.f8131b = new WeakReference<>(activity);
        this.f8133d = mf1Var;
        this.f8132c = false;
    }

    @Override // p000.re1
    /* renamed from: a */
    public void mo575a() {
        if (!this.f8132c) {
            this.f8130a.get().registerActivityLifecycleCallbacks(new C1657b());
        }
    }

    @Override // p000.re1
    /* renamed from: b */
    public boolean mo574b() {
        return this.f8134e;
    }

    @Override // p000.re1
    /* renamed from: c */
    public Activity mo573c() {
        return this.f8131b.get();
    }
}
