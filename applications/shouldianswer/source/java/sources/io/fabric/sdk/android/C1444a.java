package io.fabric.sdk.android;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;
/* renamed from: io.fabric.sdk.android.a */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/a.class */
public class C1444a {

    /* renamed from: a */
    private final Application f3993a;

    /* renamed from: b */
    private C1445a f3994b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.fabric.sdk.android.a$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/a$a.class */
    public static class C1445a {

        /* renamed from: a */
        private final Set<Application.ActivityLifecycleCallbacks> f3995a = new HashSet();

        /* renamed from: b */
        private final Application f3996b;

        C1445a(Application application) {
            this.f3996b = application;
        }

        /* renamed from: a */
        public void m3599a() {
            for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : this.f3995a) {
                this.f3996b.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
            }
        }

        /* renamed from: a */
        public boolean m3596a(final AbstractC1447b abstractC1447b) {
            if (this.f3996b != null) {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks() { // from class: io.fabric.sdk.android.a.a.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityCreated(Activity activity, Bundle bundle) {
                        abstractC1447b.onActivityCreated(activity, bundle);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityDestroyed(Activity activity) {
                        abstractC1447b.onActivityDestroyed(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPaused(Activity activity) {
                        abstractC1447b.onActivityPaused(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityResumed(Activity activity) {
                        abstractC1447b.onActivityResumed(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                        abstractC1447b.onActivitySaveInstanceState(activity, bundle);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStarted(Activity activity) {
                        abstractC1447b.onActivityStarted(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStopped(Activity activity) {
                        abstractC1447b.onActivityStopped(activity);
                    }
                };
                this.f3996b.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
                this.f3995a.add(activityLifecycleCallbacks);
                return true;
            }
            return false;
        }
    }

    /* renamed from: io.fabric.sdk.android.a$b */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/a$b.class */
    public static abstract class AbstractC1447b {
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    public C1444a(Context context) {
        this.f3993a = (Application) context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 14) {
            this.f3994b = new C1445a(this.f3993a);
        }
    }

    /* renamed from: a */
    public void m3601a() {
        C1445a c1445a = this.f3994b;
        if (c1445a != null) {
            c1445a.m3599a();
        }
    }

    /* renamed from: a */
    public boolean m3600a(AbstractC1447b abstractC1447b) {
        C1445a c1445a = this.f3994b;
        return c1445a != null && c1445a.m3596a(abstractC1447b);
    }
}
