package com.pubmatic.sdk.common.p019ui;

import com.pubmatic.sdk.common.base.POBAdDescriptor;
/* renamed from: com.pubmatic.sdk.common.ui.POBInterstitialRendering */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/ui/POBInterstitialRendering.class */
public interface POBInterstitialRendering {
    void destroy();

    void renderAd(POBAdDescriptor pOBAdDescriptor);

    void setAdRendererListener(POBInterstitialRendererListener pOBInterstitialRendererListener);

    void setVideoAdEventListener(POBVideoAdEventListener pOBVideoAdEventListener);

    void show(int i);
}
