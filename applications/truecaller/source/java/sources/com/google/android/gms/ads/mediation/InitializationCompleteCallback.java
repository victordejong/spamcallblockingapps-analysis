package com.google.android.gms.ads.mediation;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/InitializationCompleteCallback.class */
public interface InitializationCompleteCallback {
    void onInitializationFailed(@RecentlyNonNull String str);

    void onInitializationSucceeded();
}
