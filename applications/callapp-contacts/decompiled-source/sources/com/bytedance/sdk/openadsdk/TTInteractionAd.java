package com.bytedance.sdk.openadsdk;

import android.app.Activity;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTInteractionAd.class */
public interface TTInteractionAd {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener.class */
    public interface AdInteractionListener {
        void onAdClicked();

        void onAdDismiss();

        void onAdShow();
    }

    int getInteractionType();

    Map<String, Object> getMediaExtraInfo();

    void setAdInteractionListener(AdInteractionListener adInteractionListener);

    void showInteractionAd(Activity activity);
}
