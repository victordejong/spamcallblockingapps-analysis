package com.google.android.gms.ads.mediation.rtb;

import com.google.android.gms.ads.AdError;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/rtb/SignalCallbacks.class */
public interface SignalCallbacks {
    void onFailure(AdError adError);

    @Deprecated
    void onFailure(String str);

    void onSuccess(String str);
}
