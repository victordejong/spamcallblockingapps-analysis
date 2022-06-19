package io.bidmachine;

import io.bidmachine.IAd;
import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/AdListener.class */
public interface AdListener<AdType extends IAd> {
    void onAdClicked(AdType adtype);

    void onAdExpired(AdType adtype);

    void onAdImpression(AdType adtype);

    void onAdLoadFailed(AdType adtype, BMError bMError);

    void onAdLoaded(AdType adtype);

    void onAdShown(AdType adtype);
}
