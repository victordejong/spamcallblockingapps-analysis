package com.pubmatic.sdk.openwrap.banner;

import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.p019ui.POBBannerRendering;
import com.pubmatic.sdk.openwrap.core.POBBaseEvent;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerEvent.class */
public interface POBBannerEvent extends POBBaseEvent {
    POBAdSize getAdSize();

    POBBannerRendering getRenderer(String str);

    POBAdSize[] requestedAdSizes();

    void setEventListener(POBBannerEventListener pOBBannerEventListener);
}
