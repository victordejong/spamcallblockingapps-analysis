package p193e.p1512i.p1516b.p1520f3;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.List;
import p193e.p1512i.p1516b.p1531s2.C23089l;
/* renamed from: e.i.b.f3.c */
/* loaded from: classes2-dex2jar.jar:e/i/b/f3/c.class */
public class C22947c {

    /* renamed from: a */
    public final Context f63639a;

    /* renamed from: b */
    public WeakReference<Activity> f63640b = new WeakReference<>(null);

    public C22947c(Context context) {
        this.f63639a = context;
    }

    /* renamed from: a */
    public ComponentName m7616a() {
        boolean z;
        Activity activity = this.f63640b.get();
        if (activity != null) {
            return activity.getComponentName();
        }
        ActivityManager activityManager = (ActivityManager) this.f63639a.getSystemService("activity");
        if (activityManager == null) {
            C23089l.m7560a(new NullPointerException("Expected non null value, but null occurs."));
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return null;
        }
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
            if (runningTasks.isEmpty()) {
                return null;
            }
            ComponentName componentName = runningTasks.get(0).topActivity;
            if (!componentName.getPackageName().startsWith(this.f63639a.getPackageName())) {
                return null;
            }
            return componentName;
        } catch (SecurityException e) {
            C23089l.m7560a(e);
            return null;
        }
    }
}
