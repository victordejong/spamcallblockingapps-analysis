package com.pubmatic.sdk.common.p019ui;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
/* renamed from: com.pubmatic.sdk.common.ui.POBInterstitialRendererListener */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/ui/POBInterstitialRendererListener.class */
public interface POBInterstitialRendererListener {
    void onAdClicked();

    void onAdExpired();

    void onAdInteractionStarted();

    void onAdInteractionStopped();

    void onAdRender(POBAdDescriptor pOBAdDescriptor);

    void onAdRenderingFailed(POBError pOBError);

    void onAdUnload();

    void onLeavingApplication();

    void onReadyToExecuteTrackers();
}
