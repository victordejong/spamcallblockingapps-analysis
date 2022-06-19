package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventBanner.class */
public interface CustomEventBanner extends CustomEvent {
    void requestBannerAd(@RecentlyNonNull Context context, @RecentlyNonNull CustomEventBannerListener customEventBannerListener, String str, @RecentlyNonNull AdSize adSize, @RecentlyNonNull MediationAdRequest mediationAdRequest, Bundle bundle);
}
