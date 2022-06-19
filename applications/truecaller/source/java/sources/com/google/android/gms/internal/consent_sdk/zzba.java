package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzba.class */
public final class zzba implements zzcp<zzat> {
    private final zzct<Application> zza;
    private final zzct<zzab> zzb;
    private final zzct<zzbh> zzc;
    private final zzct<zzal> zzd;
    private final zzct<zzbb> zze;
    private final zzct<zzbe> zzf;

    public zzba(zzct<Application> zzctVar, zzct<zzab> zzctVar2, zzct<zzbh> zzctVar3, zzct<zzal> zzctVar4, zzct<zzbb> zzctVar5, zzct<zzbe> zzctVar6) {
        this.zza = zzctVar;
        this.zzb = zzctVar2;
        this.zzc = zzctVar3;
        this.zzd = zzctVar4;
        this.zze = zzctVar5;
        this.zzf = zzctVar6;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final /* synthetic */ Object zza() {
        return new zzat(this.zza.zza(), this.zzb.zza(), this.zzc.zza(), this.zzd.zza(), this.zze.zza(), this.zzf);
    }
}
