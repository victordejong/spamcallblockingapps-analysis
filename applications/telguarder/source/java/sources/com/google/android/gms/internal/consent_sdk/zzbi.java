package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbi.class */
public final class zzbi implements zzcp<zzbe> {
    private final zzct<zzbh> zza;
    private final zzct<Handler> zzb;
    private final zzct<zzbj> zzc;

    public zzbi(zzct<zzbh> zzctVar, zzct<Handler> zzctVar2, zzct<zzbj> zzctVar3) {
        this.zza = zzctVar;
        this.zzb = zzctVar2;
        this.zzc = zzctVar3;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final /* synthetic */ Object zza() {
        return new zzbe(this.zza.zza(), this.zzb.zza(), this.zzc.zza());
    }
}
