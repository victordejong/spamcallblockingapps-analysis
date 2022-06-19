package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import com.google.ads.C10585b;
import com.google.ads.mediation.AbstractC10602e;
import com.google.ads.mediation.MediationServerParameters;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/MediationBannerAdapter.class */
public interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends AbstractC10602e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractC10594b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    View getBannerView();

    void requestBannerAd(AbstractC10595c abstractC10595c, Activity activity, SERVER_PARAMETERS server_parameters, C10585b c10585b, C10593a c10593a, ADDITIONAL_PARAMETERS additional_parameters);
}
