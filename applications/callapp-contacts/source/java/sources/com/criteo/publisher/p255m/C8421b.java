package com.criteo.publisher.p255m;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import com.criteo.publisher.p256m0.C8444o;
import java.lang.ref.WeakReference;
import java.util.List;
/* renamed from: com.criteo.publisher.m.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m/b.class */
public class C8421b {

    /* renamed from: a */
    private final Context f30171a;

    /* renamed from: b */
    private WeakReference<Activity> f30172b = new WeakReference<>(null);

    /* renamed from: com.criteo.publisher.m.b$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m/b$a.class */
    public final class C8422a extends C8420a {
        public C8422a() {
            C8421b.this = r4;
        }

        @Override // com.criteo.publisher.p255m.C8420a, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            if (activity.equals(C8421b.this.f30172b.get())) {
                C8421b.this.f30172b = new WeakReference(null);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            C8421b.this.f30172b = new WeakReference(activity);
        }
    }

    public C8421b(Context context) {
        this.f30171a = context;
    }

    /* renamed from: a */
    public final ComponentName m25710a() {
        Activity activity = this.f30172b.get();
        if (activity != null) {
            return activity.getComponentName();
        }
        ActivityManager activityManager = (ActivityManager) this.f30171a.getSystemService("activity");
        if (!C8444o.m25676a(activityManager)) {
            return null;
        }
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
            if (runningTasks.isEmpty()) {
                return null;
            }
            ComponentName componentName = runningTasks.get(0).topActivity;
            if (!componentName.getPackageName().startsWith(this.f30171a.getPackageName())) {
                return null;
            }
            return componentName;
        } catch (SecurityException e) {
            C8444o.m25675a((Throwable) e);
            return null;
        }
    }
}
