package com.pubmatic.sdk.video.renderer;

import com.pubmatic.sdk.common.p019ui.POBBannerRendering;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/renderer/POBVideoRendering.class */
public interface POBVideoRendering extends POBBannerRendering {
    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    void destroy();

    void proceedAdSkip(boolean z);

    void setVideoRenderingListener(POBVideoRenderingListener pOBVideoRenderingListener);

    void setVideoSkipEventListener(POBVideoSkipEventListener pOBVideoSkipEventListener);
}
