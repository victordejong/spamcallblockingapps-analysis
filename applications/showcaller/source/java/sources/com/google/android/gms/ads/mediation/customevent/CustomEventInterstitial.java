package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.mediation.AbstractC5772e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventInterstitial.class */
public interface CustomEventInterstitial extends AbstractC5763a {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestInterstitialAd(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5766d abstractC5766d, String str, @RecentlyNonNull AbstractC5772e abstractC5772e, Bundle bundle);

    void showInterstitial();
}
