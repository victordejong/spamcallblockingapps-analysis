package com.pubmatic.sdk.common.p019ui;

import android.view.View;
import com.pubmatic.sdk.common.POBError;
/* renamed from: com.pubmatic.sdk.common.ui.POBRendererViewListener */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/ui/POBRendererViewListener.class */
public interface POBRendererViewListener {
    void onAdInteractionStarted();

    void onAdInteractionStopped();

    void onAdUnload();

    void onLeavingApplication();

    void onViewClicked(String str);

    void onViewRendered(View view);

    void onViewRenderingFailed(POBError pOBError);
}
