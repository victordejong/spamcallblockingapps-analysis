package com.millennialmedia.mediation;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventInterstitial.class */
public interface CustomEventInterstitial extends CustomEvent {

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventInterstitial$CustomEventInterstitialListener.class */
    public interface CustomEventInterstitialListener {
        void onAdLeftApplication();

        void onClicked();

        void onClosed();

        void onExpired();

        void onLoadFailed(ErrorCode errorCode);

        void onLoaded();

        void onShowFailed(ErrorCode errorCode);

        void onShown();
    }

    void destroy();

    void loadInterstitial(Context context, CustomEventInterstitialListener customEventInterstitialListener, Bundle bundle);

    void showInterstitial(Context context, Bundle bundle);
}
