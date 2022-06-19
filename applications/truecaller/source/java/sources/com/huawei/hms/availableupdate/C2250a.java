package com.huawei.hms.availableupdate;

import android.app.Activity;
import com.huawei.hms.support.log.HMSLog;
import com.razorpay.AnalyticsConstants;
import java.lang.ref.WeakReference;
/* renamed from: com.huawei.hms.availableupdate.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/a.class */
public class C2250a {

    /* renamed from: b */
    public static final C2250a f7293b = new C2250a();

    /* renamed from: a */
    public WeakReference<Activity> f7294a;

    /* renamed from: a */
    public final Activity m38165a() {
        WeakReference<Activity> weakReference = this.f7294a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* renamed from: a */
    public boolean m38164a(Activity activity) {
        HMSLog.m37193i("UpdateAdapterMgr", "onActivityCreate");
        Activity m38165a = m38165a();
        if (m38165a == null || m38165a.isFinishing()) {
            this.f7294a = new WeakReference<>(activity);
            return true;
        }
        activity.finish();
        HMSLog.m37193i("UpdateAdapterMgr", "finish one");
        return false;
    }

    /* renamed from: b */
    public void m38163b(Activity activity) {
        HMSLog.m37193i("UpdateAdapterMgr", "onActivityDestroy");
        Activity m38165a = m38165a();
        if (activity == null || !activity.equals(m38165a)) {
            return;
        }
        HMSLog.m37193i("UpdateAdapterMgr", AnalyticsConstants.RESET);
        this.f7294a = null;
    }
}
