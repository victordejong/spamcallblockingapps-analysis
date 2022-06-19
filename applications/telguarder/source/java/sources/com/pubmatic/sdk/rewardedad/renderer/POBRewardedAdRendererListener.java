package com.pubmatic.sdk.rewardedad.renderer;

import com.pubmatic.sdk.common.POBDataType;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendererListener.class */
public interface POBRewardedAdRendererListener {
    void onAdClicked();

    void onAdEventOccurred(POBDataType.POBVideoAdEventType pOBVideoAdEventType);

    void onAdExpired();

    void onAdInteractionStarted();

    void onAdInteractionStopped();

    void onAdRender(POBAdDescriptor pOBAdDescriptor);

    void onAdRenderingFailed(POBError pOBError);

    void onLeavingApplication();
}
