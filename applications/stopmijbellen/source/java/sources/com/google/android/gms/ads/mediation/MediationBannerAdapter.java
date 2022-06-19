package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdSize;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationBannerAdapter.class */
public interface MediationBannerAdapter extends MediationAdapter {
    @RecentlyNonNull
    View getBannerView();

    void requestBannerAd(@RecentlyNonNull Context context, @RecentlyNonNull MediationBannerListener mediationBannerListener, @RecentlyNonNull Bundle bundle, @RecentlyNonNull AdSize adSize, @RecentlyNonNull MediationAdRequest mediationAdRequest, Bundle bundle2);
}
