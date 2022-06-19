package com.google.android.gms.ads.mediation.rtb;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdError;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/rtb/SignalCallbacks.class */
public interface SignalCallbacks {
    void onFailure(@RecentlyNonNull AdError adError);

    @Deprecated
    void onFailure(@RecentlyNonNull String str);

    void onSuccess(@RecentlyNonNull String str);
}
