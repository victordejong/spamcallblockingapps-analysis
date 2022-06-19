package com.google.android.ump;

import android.content.Context;
import com.google.android.gms.internal.consent_sdk.zzc;
/* loaded from: classes2-dex2jar.jar:com/google/android/ump/UserMessagingPlatform.class */
public final class UserMessagingPlatform {

    /* loaded from: classes2-dex2jar.jar:com/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener.class */
    public interface OnConsentFormLoadFailureListener {
        void onConsentFormLoadFailure(FormError formError);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener.class */
    public interface OnConsentFormLoadSuccessListener {
        void onConsentFormLoadSuccess(ConsentForm consentForm);
    }

    private UserMessagingPlatform() {
    }

    public static ConsentInformation getConsentInformation(Context context) {
        return zzc.zza(context).zza();
    }

    public static void loadConsentForm(Context context, OnConsentFormLoadSuccessListener onConsentFormLoadSuccessListener, OnConsentFormLoadFailureListener onConsentFormLoadFailureListener) {
        zzc.zza(context).zzb().zza(onConsentFormLoadSuccessListener, onConsentFormLoadFailureListener);
    }
}
