package p193e.p1485h.p1486a.p1493c;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.HashMap;
/* renamed from: e.h.a.c.c */
/* loaded from: classes-dex2jar.jar:e/h/a/c/c.class */
public class C22720c implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final /* synthetic */ String f62898a;

    public C22720c(String str) {
        this.f62898a = str;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        String str = this.f62898a;
        if (str != null) {
            C22773p.m7788m(activity, str);
        } else {
            C22773p.m7788m(activity, null);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        HashMap<String, C22773p> hashMap = C22773p.f63085e;
        if (hashMap == null) {
            return;
        }
        for (String str : hashMap.keySet()) {
            C22773p c22773p = C22773p.f63085e.get(str);
            if (c22773p != null) {
                try {
                    c22773p.f63088b.f63517c.m7929b();
                } catch (Throwable th) {
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        String str = this.f62898a;
        if (str != null) {
            C22773p.m7787n(activity, str);
        } else {
            C22773p.m7787n(activity, null);
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
