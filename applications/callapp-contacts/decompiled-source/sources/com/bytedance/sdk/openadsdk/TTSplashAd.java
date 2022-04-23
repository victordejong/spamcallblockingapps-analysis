package com.bytedance.sdk.openadsdk;

import android.view.View;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTSplashAd.class */
public interface TTSplashAd {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener.class */
    public interface AdInteractionListener {
        void onAdClicked(View view, int i);

        void onAdShow(View view, int i);

        void onAdSkip();

        void onAdTimeOver();
    }

    int getInteractionType();

    Map<String, Object> getMediaExtraInfo();

    View getSplashView();

    void renderExpressAd(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener);

    void setNotAllowSdkCountdown();

    void setSplashInteractionListener(AdInteractionListener adInteractionListener);
}
