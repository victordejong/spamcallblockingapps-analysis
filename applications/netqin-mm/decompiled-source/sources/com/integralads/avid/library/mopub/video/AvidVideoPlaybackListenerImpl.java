package com.integralads.avid.library.mopub.video;

import com.integralads.avid.library.mopub.base.AvidBaseListenerImpl;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.mopub.session.internal.jsbridge.AvidBridgeManager;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl.class */
public class AvidVideoPlaybackListenerImpl extends AvidBaseListenerImpl implements AvidVideoPlaybackListener {
    public static final String AD_CLICK_THRU = "AdClickThru";
    public static final String AD_DURATION = "adDuration";
    public static final String AD_DURATION_CHANGE = "AdDurationChange";
    public static final String AD_ENTERED_FULLSCREEN = "AdEnteredFullscreen";
    public static final String AD_ERROR = "AdError";
    public static final String AD_EXITED_FULLSCREEN = "AdExitedFullscreen";
    public static final String AD_EXPANDED_CHANGE = "AdExpandedChange";
    public static final String AD_IMPRESSION = "AdImpression";
    public static final String AD_LOADED = "AdLoaded";
    public static final String AD_PAUSED = "AdPaused";
    public static final String AD_PLAYING = "AdPlaying";
    public static final String AD_REMAINING_TIME = "adDuration";
    public static final String AD_SKIPPED = "AdSkipped";
    public static final String AD_STARTED = "AdStarted";
    public static final String AD_STOPPED = "AdStopped";
    public static final String AD_USER_ACCEPT_INVITATION = "AdUserAcceptInvitation";
    public static final String AD_USER_CLOSE = "AdUserClose";
    public static final String AD_USER_MINIMIZE = "AdUserMinimize";
    public static final String AD_VIDEO_COMPLETE = "AdVideoComplete";
    public static final String AD_VIDEO_FIRST_QUARTILE = "AdVideoFirstQuartile";
    public static final String AD_VIDEO_MIDPOINT = "AdVideoMidpoint";
    public static final String AD_VIDEO_START = "AdVideoStart";
    public static final String AD_VIDEO_THIRD_QUARTILE = "AdVideoThirdQuartile";
    public static final String AD_VOLUME_CHANGE = "AdVolumeChange";
    public static final String MESSAGE = "message";
    public static final String VOLUME = "volume";

    public AvidVideoPlaybackListenerImpl(InternalAvidAdSession internalAvidAdSession, AvidBridgeManager avidBridgeManager) {
        super(internalAvidAdSession, avidBridgeManager);
    }

    /* renamed from: a */
    public final void m5363a(String str, JSONObject jSONObject) {
        m5397a();
        m5362d();
        m5395c().publishVideoEvent(str, jSONObject);
    }

    /* renamed from: d */
    public final void m5362d() {
        if (!m5396b().isReady()) {
            throw new IllegalStateException("The AVID ad session is not ready. Please ensure you have called recordReadyEvent for the deferred AVID ad session before recording any video event.");
        }
    }

    public void recordAdClickThruEvent() {
        m5363a(AD_CLICK_THRU, null);
    }

    public void recordAdCompleteEvent() {
        m5363a(AD_VIDEO_COMPLETE, null);
    }

    public void recordAdDurationChangeEvent(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adDuration", str);
            jSONObject.put("adDuration", str2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m5363a(AD_DURATION_CHANGE, jSONObject);
    }

    public void recordAdEnteredFullscreenEvent() {
        m5363a(AD_ENTERED_FULLSCREEN, null);
    }

    public void recordAdError(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MESSAGE, str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m5363a(AD_ERROR, jSONObject);
    }

    public void recordAdExitedFullscreenEvent() {
        m5363a(AD_EXITED_FULLSCREEN, null);
    }

    public void recordAdExpandedChangeEvent() {
        m5363a(AD_EXPANDED_CHANGE, null);
    }

    public void recordAdImpressionEvent() {
        m5363a(AD_IMPRESSION, null);
    }

    public void recordAdLoadedEvent() {
        m5363a(AD_LOADED, null);
    }

    public void recordAdPausedEvent() {
        m5363a(AD_PAUSED, null);
    }

    public void recordAdPlayingEvent() {
        m5363a(AD_PLAYING, null);
    }

    public void recordAdSkippedEvent() {
        m5363a(AD_SKIPPED, null);
    }

    public void recordAdStartedEvent() {
        m5363a(AD_STARTED, null);
    }

    public void recordAdStoppedEvent() {
        m5363a(AD_STOPPED, null);
    }

    public void recordAdUserAcceptInvitationEvent() {
        m5363a(AD_USER_ACCEPT_INVITATION, null);
    }

    public void recordAdUserCloseEvent() {
        m5363a(AD_USER_CLOSE, null);
    }

    public void recordAdUserMinimizeEvent() {
        m5363a(AD_USER_MINIMIZE, null);
    }

    public void recordAdVideoFirstQuartileEvent() {
        m5363a(AD_VIDEO_FIRST_QUARTILE, null);
    }

    public void recordAdVideoMidpointEvent() {
        m5363a(AD_VIDEO_MIDPOINT, null);
    }

    public void recordAdVideoStartEvent() {
        m5363a(AD_VIDEO_START, null);
    }

    public void recordAdVideoThirdQuartileEvent() {
        m5363a(AD_VIDEO_THIRD_QUARTILE, null);
    }

    public void recordAdVolumeChangeEvent(Integer num) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(VOLUME, num);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m5363a(AD_VOLUME_CHANGE, jSONObject);
    }
}
