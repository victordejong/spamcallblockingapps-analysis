package com.pubmatic.sdk.video.renderer;

import com.pubmatic.sdk.common.POBDataType;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/renderer/POBVideoRenderingListener.class */
public interface POBVideoRenderingListener {
    void enableBackPress();

    void notifyAdEvent(POBDataType.POBVideoAdEventType pOBVideoAdEventType);
}
