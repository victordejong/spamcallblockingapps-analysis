package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdLoadCallback.class */
public interface MediationAdLoadCallback<MediationAdT, MediationAdCallbackT> {
    void onFailure(AdError adError);

    @Deprecated
    void onFailure(String str);

    MediationAdCallbackT onSuccess(MediationAdT mediationadt);
}
