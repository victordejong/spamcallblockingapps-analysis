package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbk.class */
public final class zzbk implements zzcp<zzbh> {
    private final zzct<Application> zza;

    public zzbk(zzct<Application> zzctVar) {
        this.zza = zzctVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final /* synthetic */ Object zza() {
        return new zzbh(this.zza.zza());
    }
}
