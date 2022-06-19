package net.pubnative.lite.sdk.vpaid;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdListener.class */
public abstract class VideoAdListener {
    public void onAdClicked() {
    }

    public void onAdDidReachEnd() {
    }

    public void onAdDismissed() {
    }

    public void onAdExpired() {
    }

    public abstract void onAdLoadFail(PlayerInfo playerInfo);

    public abstract void onAdLoadSuccess();

    public void onAdStarted() {
    }

    public void onLeaveApp() {
    }
}
