package com.google.ads.mediation;

import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AdUrlAdapter.class */
public final class AdUrlAdapter extends AbstractAdViewAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    @Override // com.google.ads.mediation.AbstractAdViewAdapter
    public final String getAdUnitId(Bundle bundle) {
        return "adurl";
    }

    @Override // com.google.ads.mediation.AbstractAdViewAdapter
    protected final Bundle zza(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putBundle("sdk_less_server_data", bundle2);
        bundle.putBoolean("_noRefresh", true);
        return bundle;
    }
}
