package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationInterstitialAdapter.class */
public interface MediationInterstitialAdapter extends AbstractC5773f {
    @Override // 
    /* synthetic */ void onDestroy();

    @Override // 
    /* synthetic */ void onPause();

    @Override // 
    /* synthetic */ void onResume();

    void requestInterstitialAd(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5781n abstractC5781n, @RecentlyNonNull Bundle bundle, @RecentlyNonNull AbstractC5772e abstractC5772e, Bundle bundle2);

    void showInterstitial();
}
