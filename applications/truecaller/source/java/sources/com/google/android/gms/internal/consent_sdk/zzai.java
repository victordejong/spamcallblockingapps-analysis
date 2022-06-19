package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import com.google.android.gms.internal.consent_sdk.zzc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzai.class */
public final class zzai implements zzc.zza {
    private Application zza;

    private zzai() {
    }

    public /* synthetic */ zzai(zzaf zzafVar) {
        this();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzc.zza
    public final /* synthetic */ zzc.zza zza(Application application) {
        this.zza = (Application) zzcu.zza(application);
        return this;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzc.zza
    public final zzc zza() {
        zzcu.zza(this.zza, Application.class);
        return new zzag(this.zza, null);
    }
}
