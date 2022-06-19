package com.pubmatic.sdk.common.base;

import android.view.View;
import com.pubmatic.sdk.common.POBError;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBAdRendererListener.class */
public interface POBAdRendererListener {
    void onAdExpired();

    void onAdInteractionStarted();

    void onAdInteractionStopped();

    void onAdReadyToRefresh(int i);

    void onAdRender(View view, POBAdDescriptor pOBAdDescriptor);

    void onAdRenderingFailed(POBError pOBError);

    void onAdUnload();

    void onLeavingApplication();

    void onReadyToExecuteTrackers();

    void onRenderAdClick();
}
