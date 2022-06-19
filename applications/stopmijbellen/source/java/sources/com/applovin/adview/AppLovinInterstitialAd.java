package com.applovin.adview;

import android.content.Context;
import com.applovin.impl.adview.C1013o;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes-dex2jar.jar:com/applovin/adview/AppLovinInterstitialAd.class */
public class AppLovinInterstitialAd {
    public static AppLovinInterstitialAdDialog create(AppLovinSdk appLovinSdk, Context context) {
        if (appLovinSdk != null) {
            if (context == null) {
                throw new IllegalArgumentException("No context specified");
            }
            return new C1013o(appLovinSdk, context);
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    public String toString() {
        return "AppLovinInterstitialAd{}";
    }
}
