package com.google.ads.mediation;

import android.app.Activity;
import com.google.ads.mediation.AbstractC10602e;
import com.google.ads.mediation.MediationServerParameters;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/MediationInterstitialAdapter.class */
public interface MediationInterstitialAdapter<ADDITIONAL_PARAMETERS extends AbstractC10602e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractC10594b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    void requestInterstitialAd(AbstractC10601d abstractC10601d, Activity activity, SERVER_PARAMETERS server_parameters, C10593a c10593a, ADDITIONAL_PARAMETERS additional_parameters);

    void showInterstitial();
}
