package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbo.class */
public final class zzbo implements zzcp<zzbj> {
    private final zzct<Application> zza;
    private final zzct<zzbh> zzb;
    private final zzct<Handler> zzc;
    private final zzct<Executor> zzd;
    private final zzct<zze> zze;
    private final zzct<zzaj> zzf;
    private final zzct<zzat> zzg;

    public zzbo(zzct<Application> zzctVar, zzct<zzbh> zzctVar2, zzct<Handler> zzctVar3, zzct<Executor> zzctVar4, zzct<zze> zzctVar5, zzct<zzaj> zzctVar6, zzct<zzat> zzctVar7) {
        this.zza = zzctVar;
        this.zzb = zzctVar2;
        this.zzc = zzctVar3;
        this.zzd = zzctVar4;
        this.zze = zzctVar5;
        this.zzf = zzctVar6;
        this.zzg = zzctVar7;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final /* synthetic */ Object zza() {
        return new zzbj(this.zza.zza(), this.zzb.zza(), this.zzc.zza(), this.zzd.zza(), this.zze.zza(), this.zzf.zza(), this.zzg.zza());
    }
}
