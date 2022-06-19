package com.google.android.gms.safetynet;

import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
@KeepForSdkWithMembers
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/safetynet/SafetyNetApi.class */
public interface SafetyNetApi {
    @Deprecated
    PendingResult<RecaptchaTokenResult> verifyWithRecaptcha(GoogleApiClient googleApiClient, String str);
}
