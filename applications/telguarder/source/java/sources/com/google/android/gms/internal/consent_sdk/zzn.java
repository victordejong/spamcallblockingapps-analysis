package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentRequestParameters;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzn.class */
public final class zzn {
    private final Application zza;
    private final zzb zzb;
    private final zzal zzc;

    public zzn(Application application, zzb zzbVar, zzal zzalVar) {
        this.zza = application;
        this.zzb = zzbVar;
        this.zzc = zzalVar;
    }

    public final zzbn zza(Activity activity, ConsentRequestParameters consentRequestParameters) throws zzk {
        zzbn zza;
        ConsentDebugSettings consentDebugSettings = consentRequestParameters.getConsentDebugSettings();
        ConsentDebugSettings consentDebugSettings2 = consentDebugSettings;
        if (consentDebugSettings == null) {
            consentDebugSettings2 = new ConsentDebugSettings.Builder(this.zza).build();
        }
        zza = new zzl(this, activity, consentDebugSettings2, consentRequestParameters).zza();
        return zza;
    }
}
