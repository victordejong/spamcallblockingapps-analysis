package net.pubnative.lite.sdk.presenter;

import android.view.View;
import net.pubnative.lite.sdk.models.Ad;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/presenter/AdPresenter.class */
public interface AdPresenter {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener.class */
    public interface ImpressionListener {
        void onImpression();
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/presenter/AdPresenter$Listener.class */
    public interface Listener {
        void onAdClicked(AdPresenter adPresenter);

        void onAdError(AdPresenter adPresenter);

        void onAdLoaded(AdPresenter adPresenter, View view);
    }

    void destroy();

    Ad getAd();

    void load();

    void setImpressionListener(ImpressionListener impressionListener);

    void setListener(Listener listener);

    void startTracking();

    void stopTracking();
}
