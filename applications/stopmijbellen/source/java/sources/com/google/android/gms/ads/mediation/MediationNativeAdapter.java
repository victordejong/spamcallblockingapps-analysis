package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationNativeAdapter.class */
public interface MediationNativeAdapter extends MediationAdapter {
    void requestNativeAd(@RecentlyNonNull Context context, @RecentlyNonNull MediationNativeListener mediationNativeListener, @RecentlyNonNull Bundle bundle, @RecentlyNonNull NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2);
}
