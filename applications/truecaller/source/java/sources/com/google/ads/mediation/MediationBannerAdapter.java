package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/MediationBannerAdapter.class */
public interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends MediationAdapter<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    @RecentlyNonNull
    View getBannerView();

    void requestBannerAd(@RecentlyNonNull MediationBannerListener mediationBannerListener, @RecentlyNonNull Activity activity, @RecentlyNonNull SERVER_PARAMETERS server_parameters, @RecentlyNonNull AdSize adSize, @RecentlyNonNull MediationAdRequest mediationAdRequest, @RecentlyNonNull ADDITIONAL_PARAMETERS additional_parameters);
}
