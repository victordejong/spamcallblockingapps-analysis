package com.bytedance.sdk.openadsdk;

import android.app.Activity;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.multipro.b.a;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTNativeExpressAd.class */
public interface TTNativeExpressAd {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener.class */
    public interface AdInteractionListener extends ExpressAdInteractionListener {
        void onAdDismiss();
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener.class */
    public interface ExpressAdInteractionListener {
        void onAdClicked(View view, int i);

        void onAdShow(View view, int i);

        void onRenderFail(View view, String str, int i);

        void onRenderSuccess(View view, float f, float f2);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener.class */
    public interface ExpressVideoAdListener {
        void onClickRetry();

        void onProgressUpdate(long j, long j2);

        void onVideoAdComplete();

        void onVideoAdContinuePlay();

        void onVideoAdPaused();

        void onVideoAdStartPlay();

        void onVideoError(int i, int i2);

        void onVideoLoad();
    }

    void destroy();

    View getExpressAdView();

    List<FilterWord> getFilterWords();

    int getImageMode();

    int getInteractionType();

    Map<String, Object> getMediaExtraInfo();

    a getVideoModel();

    void render();

    void setCanInterruptVideoPlay(boolean z);

    void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback);

    void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract);

    void setExpressInteractionListener(AdInteractionListener adInteractionListener);

    void setExpressInteractionListener(ExpressAdInteractionListener expressAdInteractionListener);

    void setSlideIntervalTime(int i);

    void setVideoAdListener(ExpressVideoAdListener expressVideoAdListener);

    void showInteractionExpressAd(Activity activity);
}
