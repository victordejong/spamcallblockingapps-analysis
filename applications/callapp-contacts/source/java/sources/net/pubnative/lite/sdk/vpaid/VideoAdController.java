package net.pubnative.lite.sdk.vpaid;

import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.EnumC16422f;
import java.util.List;
import net.pubnative.lite.sdk.viewability.HyBidViewabilityFriendlyObstruction;
import net.pubnative.lite.sdk.viewability.HyBidViewabilityNativeVideoAdSession;
import net.pubnative.lite.sdk.vpaid.response.AdParams;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdController.class */
public interface VideoAdController {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdController$OnPreparedListener.class */
    public interface OnPreparedListener {
        void onPrepared();
    }

    boolean adFinishedPlaying();

    void addViewabilityFriendlyObstruction(View view, EnumC16422f enumC16422f, String str);

    void buildVideoAdView(VideoAdView videoAdView);

    void closeSelf();

    void destroy();

    void dismiss();

    AdParams getAdParams();

    HyBidViewabilityNativeVideoAdSession getViewabilityAdSession();

    List<HyBidViewabilityFriendlyObstruction> getViewabilityFriendlyObstructions();

    boolean isRewarded();

    void openUrl(String str);

    void pause();

    void playAd();

    void prepare(OnPreparedListener onPreparedListener);

    void resume();

    void setEndCardFilePath(String str);

    void setVideoFilePath(String str);

    void setVolume(boolean z);

    void skipVideo();

    void toggleMute();
}
