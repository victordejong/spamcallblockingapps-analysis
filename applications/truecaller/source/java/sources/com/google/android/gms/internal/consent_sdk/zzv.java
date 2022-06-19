package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzv.class */
public final class zzv implements zzcp<zzp> {
    private final zzct<Application> zza;
    private final zzct<zzab> zzb;
    private final zzct<Handler> zzc;
    private final zzct<Executor> zzd;
    private final zzct<zzal> zze;
    private final zzct<zzaz> zzf;
    private final zzct<zzn> zzg;
    private final zzct<zzz> zzh;
    private final zzct<zze> zzi;

    public zzv(zzct<Application> zzctVar, zzct<zzab> zzctVar2, zzct<Handler> zzctVar3, zzct<Executor> zzctVar4, zzct<zzal> zzctVar5, zzct<zzaz> zzctVar6, zzct<zzn> zzctVar7, zzct<zzz> zzctVar8, zzct<zze> zzctVar9) {
        this.zza = zzctVar;
        this.zzb = zzctVar2;
        this.zzc = zzctVar3;
        this.zzd = zzctVar4;
        this.zze = zzctVar5;
        this.zzf = zzctVar6;
        this.zzg = zzctVar7;
        this.zzh = zzctVar8;
        this.zzi = zzctVar9;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final /* synthetic */ Object zza() {
        Application zza = this.zza.zza();
        zzab zza2 = this.zzb.zza();
        Handler zza3 = this.zzc.zza();
        Executor zza4 = this.zzd.zza();
        zzal zza5 = this.zze.zza();
        zzaz zza6 = this.zzf.zza();
        zzn zza7 = this.zzg.zza();
        return new zzp(zza, zza2, zza3, zza4, zza5, zza6, zza7, this.zzh.zza(), this.zzi.zza());
    }
}
