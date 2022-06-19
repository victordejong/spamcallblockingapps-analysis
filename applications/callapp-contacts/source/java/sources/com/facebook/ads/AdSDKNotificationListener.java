package com.facebook.ads;

import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/AdSDKNotificationListener.class */
public interface AdSDKNotificationListener {
    public static final String ENCRYPTED_CPM_KEY = "encrypted_cpm";
    public static final String IMPRESSION_EVENT = "impression";

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/AdSDKNotificationListener$SDKEventKey.class */
    public @interface SDKEventKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/AdSDKNotificationListener$SDKEventType.class */
    public @interface SDKEventType {
    }

    void onAdEvent(String str, Bundle bundle);
}
