package p193e.p194a.p195a.p244k.p245a;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import com.truecaller.messaging.transport.p170im.ImSubscriptionService;
import java.util.LinkedHashMap;
import java.util.Map;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.e0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/e0.class */
public final class C6542e0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final Map<Activity, ServiceConnection> f21607a = new LinkedHashMap();

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
        l.e(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        l.e(activity, "activity");
        if (!C6546f0.f21610a.contains(activity.getClass())) {
            return;
        }
        ServiceConnectionC6647x1 serviceConnectionC6647x1 = new ServiceConnectionC6647x1();
        this.f21607a.put(activity, serviceConnectionC6647x1);
        activity.bindService(new Intent(activity, ImSubscriptionService.class), serviceConnectionC6647x1, 1);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        l.e(activity, "activity");
        ServiceConnection remove = this.f21607a.remove(activity);
        if (remove != null) {
            activity.unbindService(remove);
        }
    }
}
