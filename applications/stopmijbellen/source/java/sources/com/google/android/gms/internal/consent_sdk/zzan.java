package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzan.class */
public final class zzan implements zzch<zzam> {
    private final zzcl<Application> zza;

    public zzan(zzcl<Application> zzclVar) {
        this.zza = zzclVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzcl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzam(this.zza.zzb());
    }
}
