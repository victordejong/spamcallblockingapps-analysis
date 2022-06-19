package com.google.ads.mediation;

import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
@Keep
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AdUrlAdapter.class */
public final class AdUrlAdapter extends AbstractAdViewAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    private static final String AD_URL_AD_UNIT_ID = "adurl";

    @Override // com.google.ads.mediation.AbstractAdViewAdapter
    @RecentlyNonNull
    protected Bundle buildExtrasBundle(@RecentlyNonNull Bundle bundle, @RecentlyNonNull Bundle bundle2) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putBundle("sdk_less_server_data", bundle2);
        bundle.putBoolean("_noRefresh", true);
        return bundle;
    }

    @Override // com.google.ads.mediation.AbstractAdViewAdapter
    @RecentlyNonNull
    public String getAdUnitId(@RecentlyNonNull Bundle bundle) {
        return AD_URL_AD_UNIT_ID;
    }
}
