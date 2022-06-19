package com.google.ads.mediation;

import android.app.Activity;
import com.google.ads.mediation.AbstractC2234e;
import com.google.ads.mediation.MediationServerParameters;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationInterstitialAdapter.class */
public interface MediationInterstitialAdapter<ADDITIONAL_PARAMETERS extends AbstractC2234e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractC2225b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    void requestInterstitialAd(AbstractC2233d abstractC2233d, Activity activity, SERVER_PARAMETERS server_parameters, C2224a c2224a, ADDITIONAL_PARAMETERS additional_parameters);

    void showInterstitial();
}
