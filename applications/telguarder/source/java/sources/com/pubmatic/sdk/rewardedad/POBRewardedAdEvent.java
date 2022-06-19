package com.pubmatic.sdk.rewardedad;

import com.pubmatic.sdk.openwrap.core.POBBaseEvent;
import com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendering;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/POBRewardedAdEvent.class */
public interface POBRewardedAdEvent extends POBBaseEvent {
    POBRewardedAdRendering getRenderer(String str);

    void setEventListener(POBRewardedAdEventListener pOBRewardedAdEventListener);

    void show();
}
