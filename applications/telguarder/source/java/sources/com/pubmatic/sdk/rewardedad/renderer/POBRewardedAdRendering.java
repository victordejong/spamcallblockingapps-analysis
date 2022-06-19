package com.pubmatic.sdk.rewardedad.renderer;

import com.pubmatic.sdk.common.base.POBAdDescriptor;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering.class */
public interface POBRewardedAdRendering {
    void destroy();

    void renderAd(POBAdDescriptor pOBAdDescriptor);

    void setAdRendererListener(POBRewardedAdRendererListener pOBRewardedAdRendererListener);

    void show();
}
