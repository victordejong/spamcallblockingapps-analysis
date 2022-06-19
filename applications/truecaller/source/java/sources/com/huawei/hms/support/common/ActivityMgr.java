package com.huawei.hms.support.common;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.huawei.hms.support.log.HMSLog;
import com.razorpay.AnalyticsConstants;
import java.lang.ref.WeakReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/common/ActivityMgr.class */
public final class ActivityMgr implements Application.ActivityLifecycleCallbacks {
    public static final ActivityMgr INST = new ActivityMgr();

    /* renamed from: a */
    public WeakReference<Activity> f7805a;

    /* renamed from: a */
    public static String m37207a(Object obj) {
        String str;
        if (obj == null) {
            str = AnalyticsConstants.NULL;
        } else {
            str = obj.getClass().getName() + '@' + Integer.toHexString(obj.hashCode());
        }
        return str;
    }

    public Activity getCurrentActivity() {
        if (this.f7805a == null) {
            StringBuilder m8728C = C22128a.m8728C("mCurrentActivity is ");
            m8728C.append(this.f7805a);
            HMSLog.m37193i("ActivityMgr", m8728C.toString());
            return null;
        }
        StringBuilder m8728C2 = C22128a.m8728C("mCurrentActivity.get() is ");
        m8728C2.append(this.f7805a.get());
        HMSLog.m37193i("ActivityMgr", m8728C2.toString());
        return this.f7805a.get();
    }

    public void init(Application application) {
        HMSLog.m37198d("ActivityMgr", AnalyticsConstants.INIT);
        if (application == null) {
            HMSLog.m37192w("ActivityMgr", "init failed for app is null");
            return;
        }
        ActivityMgr activityMgr = INST;
        application.unregisterActivityLifecycleCallbacks(activityMgr);
        application.registerActivityLifecycleCallbacks(activityMgr);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        StringBuilder m8728C = C22128a.m8728C("onCreated:");
        m8728C.append(m37207a(activity));
        HMSLog.m37198d("ActivityMgr", m8728C.toString());
        this.f7805a = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        StringBuilder m8728C = C22128a.m8728C("onResumed:");
        m8728C.append(m37207a(activity));
        HMSLog.m37198d("ActivityMgr", m8728C.toString());
        this.f7805a = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        StringBuilder m8728C = C22128a.m8728C("onStarted:");
        m8728C.append(m37207a(activity));
        HMSLog.m37198d("ActivityMgr", m8728C.toString());
        this.f7805a = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
