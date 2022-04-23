package com.mopub.mobileads;

import android.app.Activity;
import com.mopub.common.LifecycleListener;
import com.mopub.common.MoPubLifecycleManager;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventRewardedAd.class */
public abstract class CustomEventRewardedAd {
    /* renamed from: a */
    public abstract String mo4330a();

    /* renamed from: a */
    public abstract boolean mo4366a(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception;

    @VisibleForTesting
    /* renamed from: b */
    public abstract LifecycleListener mo4364b();

    /* renamed from: b */
    public final void m4393b(Activity activity, Map<String, Object> map, Map<String, String> map2) {
        try {
            if (mo4366a(activity, map, map2)) {
                MoPubLifecycleManager.getInstance(activity).addLifecycleListener(mo4364b());
            }
            mo4329c(activity, map, map2);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, e.getMessage());
        }
    }

    /* renamed from: c */
    public abstract void mo4329c(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception;

    /* renamed from: c */
    public abstract boolean mo4363c();

    /* renamed from: d */
    public abstract void mo4328d();

    /* renamed from: e */
    public abstract void mo4327e();
}
