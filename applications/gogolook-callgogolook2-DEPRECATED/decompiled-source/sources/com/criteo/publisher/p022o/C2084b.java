package com.criteo.publisher.p022o;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import com.criteo.publisher.p020a0.C1928p;
import java.lang.ref.WeakReference;
import java.util.List;
/* renamed from: com.criteo.publisher.o.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/o/b.class */
public class C2084b {
    @NonNull

    /* renamed from: a */
    public final Context f2329a;
    @NonNull

    /* renamed from: b */
    public WeakReference<Activity> f2330b = new WeakReference<>(null);

    /* renamed from: com.criteo.publisher.o.b$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/o/b$a.class */
    public class C2085a extends C2083a {
        public C2085a() {
        }

        @Override // com.criteo.publisher.p022o.C2083a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (activity.equals(C2084b.this.f2330b.get())) {
                C2084b.this.f2330b = new WeakReference(null);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            C2084b.this.f2330b = new WeakReference(activity);
        }
    }

    public C2084b(@NonNull Context context) {
        this.f2329a = context;
    }

    @Nullable
    /* renamed from: a */
    public ComponentName m35715a() {
        Activity activity = this.f2330b.get();
        if (activity != null) {
            return activity.getComponentName();
        }
        ActivityManager activityManager = (ActivityManager) this.f2329a.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        if (!C1928p.m36002a(activityManager)) {
            return null;
        }
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
            if (runningTasks.isEmpty()) {
                return null;
            }
            ComponentName componentName = runningTasks.get(0).topActivity;
            if (componentName.getPackageName().startsWith(this.f2329a.getPackageName())) {
                return componentName;
            }
            return null;
        } catch (SecurityException e) {
            C1928p.m36001a((Throwable) e);
            return null;
        }
    }

    /* renamed from: a */
    public void m35714a(@NonNull Application application) {
        application.registerActivityLifecycleCallbacks(new C2085a());
    }
}
