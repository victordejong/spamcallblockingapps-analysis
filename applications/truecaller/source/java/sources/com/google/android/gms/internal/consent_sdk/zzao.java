package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzao.class */
public final class zzao implements zzcp<zzal> {
    private final zzct<Application> zza;

    public zzao(zzct<Application> zzctVar) {
        this.zza = zzctVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final /* synthetic */ Object zza() {
        return new zzal(this.zza.zza());
    }
}
