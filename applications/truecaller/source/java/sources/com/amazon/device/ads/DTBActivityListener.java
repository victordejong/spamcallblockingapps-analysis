package com.amazon.device.ads;

import android.app.Activity;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBActivityListener.class */
public interface DTBActivityListener {
    void onActivityDestroyed(Activity activity);

    void onActivityPaused(Activity activity);

    void onActivityResumed(Activity activity);

    void onActivityStopped(Activity activity);
}
