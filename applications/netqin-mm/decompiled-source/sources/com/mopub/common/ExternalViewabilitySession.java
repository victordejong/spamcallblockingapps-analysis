package com.mopub.common;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/ExternalViewabilitySession.class */
public interface ExternalViewabilitySession {

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/ExternalViewabilitySession$VideoEvent.class */
    public enum VideoEvent {
        AD_LOADED(null, "recordAdLoadedEvent"),
        AD_STARTED("AD_EVT_START", "recordAdStartedEvent"),
        AD_STOPPED("AD_EVT_STOPPED", "recordAdStoppedEvent"),
        AD_PAUSED("AD_EVT_PAUSED", "recordAdPausedEvent"),
        AD_PLAYING("AD_EVT_PLAYING", "recordAdPlayingEvent"),
        AD_SKIPPED("AD_EVT_SKIPPED", "recordAdSkippedEvent"),
        AD_IMPRESSED(null, "recordAdImpressionEvent"),
        AD_CLICK_THRU(null, "recordAdClickThruEvent"),
        AD_VIDEO_FIRST_QUARTILE("AD_EVT_FIRST_QUARTILE", "recordAdVideoFirstQuartileEvent"),
        AD_VIDEO_MIDPOINT("AD_EVT_MID_POINT", "recordAdVideoMidpointEvent"),
        AD_VIDEO_THIRD_QUARTILE("AD_EVT_THIRD_QUARTILE", "recordAdVideoThirdQuartileEvent"),
        AD_COMPLETE("AD_EVT_COMPLETE", "recordAdCompleteEvent"),
        RECORD_AD_ERROR(null, "recordAdError");
        
        public String avidMethodName;
        public String moatEnumName;

        VideoEvent(String str, String str2) {
            this.moatEnumName = str;
            this.avidMethodName = str2;
        }

        public String getAvidMethodName() {
            return this.avidMethodName;
        }

        public String getMoatEnumName() {
            return this.moatEnumName;
        }
    }

    Boolean createDisplaySession(Context context, WebView webView, boolean z);

    Boolean createVideoSession(Activity activity, View view, Set<String> set, Map<String, String> map);

    Boolean endDisplaySession();

    Boolean endVideoSession();

    String getName();

    Boolean initialize(Context context);

    Boolean invalidate();

    Boolean onVideoPrepared(View view, int i);

    Boolean recordVideoEvent(VideoEvent videoEvent, int i);

    Boolean registerVideoObstruction(View view);

    Boolean startDeferredDisplaySession(Activity activity);
}
