package com.google.ads.mediation;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.MediationServerParameters;
import p154l2.AbstractC3484b;
import p154l2.AbstractC3486d;
import p154l2.AbstractC3487e;
import p154l2.C3483a;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationInterstitialAdapter.class */
public interface MediationInterstitialAdapter<ADDITIONAL_PARAMETERS extends AbstractC3487e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractC3484b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    @Override // p154l2.AbstractC3484b
    /* synthetic */ void destroy();

    @Override // p154l2.AbstractC3484b
    @RecentlyNonNull
    /* synthetic */ Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    @Override // p154l2.AbstractC3484b
    @RecentlyNonNull
    /* synthetic */ Class<SERVER_PARAMETERS> getServerParametersType();

    void requestInterstitialAd(@RecentlyNonNull AbstractC3486d abstractC3486d, @RecentlyNonNull Activity activity, @RecentlyNonNull SERVER_PARAMETERS server_parameters, @RecentlyNonNull C3483a c3483a, @RecentlyNonNull ADDITIONAL_PARAMETERS additional_parameters);

    void showInterstitial();
}
