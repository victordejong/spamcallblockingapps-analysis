package com.verizon.ads.interstitialplacement;

import android.content.Context;
import com.verizon.ads.AdAdapter;
import com.verizon.ads.ErrorInfo;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdAdapter.class */
public interface InterstitialAdAdapter extends AdAdapter {

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener.class */
    public interface InterstitialAdAdapterListener {
        void onAdLeftApplication();

        void onClicked();

        void onClosed();

        void onError(ErrorInfo errorInfo);

        void onEvent(String str, String str2, Map<String, Object> map);

        void onShown();
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener.class */
    public interface LoadViewListener {
        void onComplete(ErrorInfo errorInfo);
    }

    void abortLoad();

    void fireImpression();

    int getEnterAnimationId();

    int getExitAnimationId();

    boolean isImmersiveEnabled();

    void load(Context context, int i, LoadViewListener loadViewListener);

    void release();

    void setEnterAnimation(int i);

    void setExitAnimation(int i);

    void setImmersiveEnabled(boolean z);

    void setListener(InterstitialAdAdapterListener interstitialAdAdapterListener);

    void show(Context context);
}
