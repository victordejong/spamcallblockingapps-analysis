package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import com.google.ads.b;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.e;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/MediationBannerAdapter.class */
public interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends e, SERVER_PARAMETERS extends MediationServerParameters> extends b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    View getBannerView();

    void requestBannerAd(c cVar, Activity activity, SERVER_PARAMETERS server_parameters, b bVar, a aVar, ADDITIONAL_PARAMETERS additional_parameters);
}
