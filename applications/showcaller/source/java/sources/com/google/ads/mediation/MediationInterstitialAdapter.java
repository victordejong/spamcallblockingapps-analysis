package com.google.ads.mediation;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.AbstractC4595e;
import com.google.ads.mediation.MediationServerParameters;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationInterstitialAdapter.class */
public interface MediationInterstitialAdapter<ADDITIONAL_PARAMETERS extends AbstractC4595e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractC4587b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    @Override // com.google.ads.mediation.AbstractC4587b
    /* synthetic */ void destroy();

    @Override // com.google.ads.mediation.AbstractC4587b
    @RecentlyNonNull
    /* synthetic */ Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    @Override // com.google.ads.mediation.AbstractC4587b
    @RecentlyNonNull
    /* synthetic */ Class<SERVER_PARAMETERS> getServerParametersType();

    void requestInterstitialAd(@RecentlyNonNull AbstractC4594d abstractC4594d, @RecentlyNonNull Activity activity, @RecentlyNonNull SERVER_PARAMETERS server_parameters, @RecentlyNonNull C4586a c4586a, @RecentlyNonNull ADDITIONAL_PARAMETERS additional_parameters);

    void showInterstitial();
}
