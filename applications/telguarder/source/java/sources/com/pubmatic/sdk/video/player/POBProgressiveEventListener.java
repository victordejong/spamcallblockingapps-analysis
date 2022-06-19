package com.pubmatic.sdk.video.player;

import com.pubmatic.sdk.video.vastmodels.POBVastCreative;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBProgressiveEventListener.class */
public interface POBProgressiveEventListener {
    void onProgressReached(Map<POBVastCreative.POBEventTypes, List<String>> map);
}
