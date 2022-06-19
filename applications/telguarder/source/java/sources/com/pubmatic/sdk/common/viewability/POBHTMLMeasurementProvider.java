package com.pubmatic.sdk.common.viewability;

import android.webkit.WebView;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider.class */
public interface POBHTMLMeasurementProvider extends POBMeasurementProvider {

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType.class */
    public enum POBHTMLAdEventType {
        LOADED,
        IMPRESSION,
        CLICK,
        ACCEPT_INVITATION
    }

    void signalAdEvent(POBHTMLAdEventType pOBHTMLAdEventType);

    void startAdSession(WebView webView);
}
