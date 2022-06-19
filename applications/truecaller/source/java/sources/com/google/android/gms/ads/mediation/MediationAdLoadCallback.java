package com.google.android.gms.ads.mediation;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdError;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdLoadCallback.class */
public interface MediationAdLoadCallback<MediationAdT, MediationAdCallbackT> {
    void onFailure(@RecentlyNonNull AdError adError);

    @Deprecated
    void onFailure(@RecentlyNonNull String str);

    @RecentlyNonNull
    MediationAdCallbackT onSuccess(@RecentlyNonNull MediationAdT mediationadt);
}
