package com.pubmatic.sdk.openwrap.interstitial;

import com.pubmatic.sdk.common.p019ui.POBInterstitialRendering;
import com.pubmatic.sdk.openwrap.core.POBBaseEvent;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent.class */
public interface POBInterstitialEvent extends POBBaseEvent {
    POBInterstitialRendering getRenderer(String str);

    void setEventListener(POBInterstitialEventListener pOBInterstitialEventListener);

    void show();
}
