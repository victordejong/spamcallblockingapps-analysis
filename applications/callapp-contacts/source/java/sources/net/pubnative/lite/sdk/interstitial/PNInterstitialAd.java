package net.pubnative.lite.sdk.interstitial;

import android.app.Activity;
import net.pubnative.lite.sdk.interstitial.HyBidInterstitialAd;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/PNInterstitialAd.class */
public class PNInterstitialAd extends HyBidInterstitialAd {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/PNInterstitialAd$Listener.class */
    public interface Listener extends HyBidInterstitialAd.Listener {
    }

    public PNInterstitialAd(Activity activity, String str, Listener listener) {
        super(activity, str, (HyBidInterstitialAd.Listener) listener);
    }
}
