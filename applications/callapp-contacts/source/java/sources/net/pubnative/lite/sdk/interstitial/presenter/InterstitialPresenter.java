package net.pubnative.lite.sdk.interstitial.presenter;

import net.pubnative.lite.sdk.models.C20576Ad;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter.class */
public interface InterstitialPresenter {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener.class */
    public interface Listener {
        void onInterstitialClicked(InterstitialPresenter interstitialPresenter);

        void onInterstitialDismissed(InterstitialPresenter interstitialPresenter);

        void onInterstitialError(InterstitialPresenter interstitialPresenter);

        void onInterstitialLoaded(InterstitialPresenter interstitialPresenter);

        void onInterstitialShown(InterstitialPresenter interstitialPresenter);
    }

    void destroy();

    C20576Ad getAd();

    boolean isReady();

    void load();

    void setListener(Listener listener);

    void show();
}
