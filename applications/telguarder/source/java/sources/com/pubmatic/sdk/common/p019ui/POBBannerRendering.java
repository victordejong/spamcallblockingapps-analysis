package com.pubmatic.sdk.common.p019ui;

import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBAdRendererListener;
/* renamed from: com.pubmatic.sdk.common.ui.POBBannerRendering */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/ui/POBBannerRendering.class */
public interface POBBannerRendering {
    void destroy();

    void invalidateExpiration();

    void prepareToDetach();

    void renderAd(POBAdDescriptor pOBAdDescriptor);

    void setAdRendererListener(POBAdRendererListener pOBAdRendererListener);
}
