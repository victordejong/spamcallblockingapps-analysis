package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import com.google.ads.C2216b;
import com.google.ads.mediation.AbstractC2234e;
import com.google.ads.mediation.MediationServerParameters;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationBannerAdapter.class */
public interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends AbstractC2234e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractC2225b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    View getBannerView();

    void requestBannerAd(AbstractC2226c abstractC2226c, Activity activity, SERVER_PARAMETERS server_parameters, C2216b c2216b, C2224a c2224a, ADDITIONAL_PARAMETERS additional_parameters);
}
