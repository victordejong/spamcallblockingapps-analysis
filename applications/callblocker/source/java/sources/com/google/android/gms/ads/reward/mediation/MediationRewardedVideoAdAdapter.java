package com.google.android.gms.ads.reward.mediation;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.AbstractC2360e;
import com.google.android.gms.ads.mediation.AbstractC2361f;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter.class */
public interface MediationRewardedVideoAdAdapter extends AbstractC2361f {
    public static final String CUSTOM_EVENT_SERVER_PARAMETER_FIELD = "parameter";

    void initialize(Context context, AbstractC2360e abstractC2360e, String str, AbstractC2395a abstractC2395a, Bundle bundle, Bundle bundle2);

    boolean isInitialized();

    void loadAd(AbstractC2360e abstractC2360e, Bundle bundle, Bundle bundle2);

    void showVideo();
}
