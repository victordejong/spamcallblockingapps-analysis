package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.C5605f;
import com.google.android.gms.ads.mediation.AbstractC5772e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventBanner.class */
public interface CustomEventBanner extends AbstractC5763a {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestBannerAd(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5764b abstractC5764b, String str, @RecentlyNonNull C5605f c5605f, @RecentlyNonNull AbstractC5772e abstractC5772e, Bundle bundle);
}
