package com.amazon.device.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/ActivityMonitor.class */
public class ActivityMonitor implements Application.ActivityLifecycleCallbacks {

    /* renamed from: c  reason: collision with root package name */
    private static ActivityMonitor f6362c;

    /* renamed from: a  reason: collision with root package name */
    WeakReference<Activity> f6363a;

    /* renamed from: b  reason: collision with root package name */
    DTBActivityListener f6364b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActivityMonitor(Context context) {
        if (context != null) {
            Application application = (Application) context.getApplicationContext();
            if (application != null) {
                a(context);
                application.registerActivityLifecycleCallbacks(this);
            }
            f6362c = this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ActivityMonitor a() {
        return f6362c;
    }

    private void a(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                this.f6363a = new WeakReference<>((Activity) context);
                return;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.f6363a = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        DTBActivityListener dTBActivityListener = this.f6364b;
        if (dTBActivityListener != null) {
            dTBActivityListener.b();
            if (activity == this.f6363a.get()) {
                this.f6363a = null;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f6363a = new WeakReference<>(activity);
        DTBActivityListener dTBActivityListener = this.f6364b;
        if (dTBActivityListener != null) {
            dTBActivityListener.a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
