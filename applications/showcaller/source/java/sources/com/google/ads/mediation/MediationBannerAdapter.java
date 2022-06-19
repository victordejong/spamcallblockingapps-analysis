package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.C4584a;
import com.google.ads.mediation.AbstractC4595e;
import com.google.ads.mediation.MediationServerParameters;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationBannerAdapter.class */
public interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends AbstractC4595e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractC4587b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    @Override // com.google.ads.mediation.AbstractC4587b
    /* synthetic */ void destroy();

    @Override // com.google.ads.mediation.AbstractC4587b
    @RecentlyNonNull
    /* synthetic */ Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    @RecentlyNonNull
    View getBannerView();

    @Override // com.google.ads.mediation.AbstractC4587b
    @RecentlyNonNull
    /* synthetic */ Class<SERVER_PARAMETERS> getServerParametersType();

    void requestBannerAd(@RecentlyNonNull AbstractC4588c abstractC4588c, @RecentlyNonNull Activity activity, @RecentlyNonNull SERVER_PARAMETERS server_parameters, @RecentlyNonNull C4584a c4584a, @RecentlyNonNull C4586a c4586a, @RecentlyNonNull ADDITIONAL_PARAMETERS additional_parameters);
}
