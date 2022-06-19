package com.google.android.gms.internal.consent_sdk;

import com.google.android.ump.ConsentInformation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzu.class */
final /* synthetic */ class zzu implements Runnable {
    private final ConsentInformation.OnConsentInfoUpdateSuccessListener zza;

    private zzu(ConsentInformation.OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener) {
        this.zza = onConsentInfoUpdateSuccessListener;
    }

    public static Runnable zza(ConsentInformation.OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener) {
        return new zzu(onConsentInfoUpdateSuccessListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.onConsentInfoUpdateSuccess();
    }
}
