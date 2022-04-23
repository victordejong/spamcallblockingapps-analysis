package io.bidmachine.interstitial;

import android.content.Context;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.FullScreenAd;
import io.bidmachine.FullScreenAdObject;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedFullscreenAd;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/interstitial/InterstitialAd.class */
public final class InterstitialAd extends FullScreenAd<InterstitialAd, InterstitialRequest, FullScreenAdObject<InterstitialRequest>, InterstitialListener> {
    public InterstitialAd(Context context) {
        super(context, AdsType.Interstitial);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final FullScreenAdObject<InterstitialRequest> createAdObject(ContextProvider contextProvider, InterstitialRequest interstitialRequest, NetworkAdapter networkAdapter, AdObjectParams adObjectParams, AdProcessCallback adProcessCallback) {
        UnifiedFullscreenAd createInterstitial = networkAdapter.createInterstitial();
        if (createInterstitial == null) {
            return null;
        }
        return new FullScreenAdObject<>(contextProvider, adProcessCallback, interstitialRequest, adObjectParams, createInterstitial);
    }
}
