package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationNativeAdapter.class */
public interface MediationNativeAdapter extends AbstractC5773f {
    @Override // com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    /* synthetic */ void onDestroy();

    @Override // com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    /* synthetic */ void onPause();

    @Override // com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    /* synthetic */ void onResume();

    void requestNativeAd(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5783p abstractC5783p, @RecentlyNonNull Bundle bundle, @RecentlyNonNull AbstractC5788s abstractC5788s, Bundle bundle2);
}
