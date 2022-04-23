package com.criteo.publisher.m;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import com.criteo.publisher.m0.o;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17489a;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Activity> f17490b = new WeakReference<>(null);

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m/b$a.class */
    public final class a extends com.criteo.publisher.m.a {
        public a() {
        }

        @Override // com.criteo.publisher.m.a, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            if (activity.equals(b.this.f17490b.get())) {
                b.this.f17490b = new WeakReference(null);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            b.this.f17490b = new WeakReference(activity);
        }
    }

    public b(Context context) {
        this.f17489a = context;
    }

    public final ComponentName a() {
        Activity activity = this.f17490b.get();
        if (activity != null) {
            return activity.getComponentName();
        }
        ActivityManager activityManager = (ActivityManager) this.f17489a.getSystemService("activity");
        if (!o.a(activityManager)) {
            return null;
        }
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
            if (runningTasks.isEmpty()) {
                return null;
            }
            ComponentName componentName = runningTasks.get(0).topActivity;
            if (componentName.getPackageName().startsWith(this.f17489a.getPackageName())) {
                return componentName;
            }
            return null;
        } catch (SecurityException e) {
            o.a((Throwable) e);
            return null;
        }
    }
}
