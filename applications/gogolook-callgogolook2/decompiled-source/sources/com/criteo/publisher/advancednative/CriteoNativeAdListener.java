package com.criteo.publisher.advancednative;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import com.criteo.publisher.CriteoErrorCode;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeAdListener.class */
public abstract class CriteoNativeAdListener {
    @UiThread
    public void onAdClicked() {
    }

    @UiThread
    public void onAdClosed() {
    }

    @UiThread
    public void onAdFailedToReceive(@NonNull CriteoErrorCode criteoErrorCode) {
    }

    @UiThread
    public void onAdImpression() {
    }

    @UiThread
    public void onAdLeftApplication() {
    }

    @UiThread
    public abstract void onAdReceived(@NonNull CriteoNativeAd criteoNativeAd);
}
