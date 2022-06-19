package com.google.ads.mediation.admob;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/admob/AdMobAdapter.class */
public final class AdMobAdapter extends AbstractAdViewAdapter {
    public static final String NEW_BUNDLE = "_newBundle";

    @Override // com.google.ads.mediation.AbstractAdViewAdapter
    protected final Bundle zza(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle3 = bundle;
        if (bundle.getBoolean(NEW_BUNDLE)) {
            bundle3 = new Bundle(bundle);
        }
        bundle3.putInt("gw", 1);
        bundle3.putString("mad_hac", bundle2.getString("mad_hac"));
        if (!TextUtils.isEmpty(bundle2.getString("adJson"))) {
            bundle3.putString("_ad", bundle2.getString("adJson"));
        }
        bundle3.putBoolean("_noRefresh", true);
        return bundle3;
    }
}
