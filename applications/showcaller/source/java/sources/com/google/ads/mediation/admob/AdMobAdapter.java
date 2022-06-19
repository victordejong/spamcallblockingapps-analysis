package com.google.ads.mediation.admob;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.AbstractAdViewAdapter;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/admob/AdMobAdapter.class */
public final class AdMobAdapter extends AbstractAdViewAdapter {
    static final String AD_JSON_PARAMETER = "adJson";
    static final String AD_PARAMETER = "_ad";
    static final String HOUSE_ADS_PARAMETER = "mad_hac";
    @RecentlyNonNull
    public static final String NEW_BUNDLE = "_newBundle";

    @Override // com.google.ads.mediation.AbstractAdViewAdapter
    @RecentlyNonNull
    protected Bundle buildExtrasBundle(@RecentlyNonNull Bundle bundle, @RecentlyNonNull Bundle bundle2) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle3 = bundle;
        if (bundle.getBoolean(NEW_BUNDLE)) {
            bundle3 = new Bundle(bundle);
        }
        bundle3.putInt("gw", 1);
        bundle3.putString(HOUSE_ADS_PARAMETER, bundle2.getString(HOUSE_ADS_PARAMETER));
        if (!TextUtils.isEmpty(bundle2.getString(AD_JSON_PARAMETER))) {
            bundle3.putString(AD_PARAMETER, bundle2.getString(AD_JSON_PARAMETER));
        }
        bundle3.putBoolean("_noRefresh", true);
        return bundle3;
    }
}
