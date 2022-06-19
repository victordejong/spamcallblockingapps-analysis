package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzag.class */
public final class zzag extends zzc {
    private zzct<Application> zza;
    private zzct<zzal> zzb;
    private zzct<zzab> zzc;
    private zzct<zzau> zzd;
    private zzct<zzaz> zze;
    private zzct<zzb> zzf;
    private zzct<zzn> zzg;
    private zzct<zze> zzh;
    private zzct<zzaj> zzi;
    private zzct<zzz> zzj;
    private zzct<zzp> zzk;
    private zzct<zzj> zzl;

    private zzag(Application application) {
        zzae zzaeVar;
        zzap zzapVar;
        zzap zzapVar2;
        zzan zzanVar;
        zzap zzapVar3;
        zzcp zza = zzcs.zza(application);
        this.zza = zza;
        this.zzb = zzcq.zza(new zzao(zza));
        zzaeVar = zzad.zza;
        this.zzc = zzcq.zza(zzaeVar);
        zzaf zzafVar = new zzaf(this);
        this.zzd = zzafVar;
        this.zze = zzcq.zza(new zzbc(zzafVar));
        zzd zzdVar = new zzd(this.zza);
        this.zzf = zzdVar;
        this.zzg = new zzq(this.zza, zzdVar, this.zzb);
        zzapVar = zzas.zza;
        this.zzh = zzcq.zza(new zzh(zzapVar));
        zzct<Application> zzctVar = this.zza;
        zzct<zzal> zzctVar2 = this.zzb;
        zzapVar2 = zzas.zza;
        zzam zzamVar = new zzam(zzctVar, zzctVar2, zzapVar2);
        this.zzi = zzamVar;
        this.zzj = new zzac(this.zzh, zzamVar, this.zzb);
        zzct<Application> zzctVar3 = this.zza;
        zzct<zzab> zzctVar4 = this.zzc;
        zzanVar = zzaq.zza;
        zzapVar3 = zzas.zza;
        zzv zzvVar = new zzv(zzctVar3, zzctVar4, zzanVar, zzapVar3, this.zzb, this.zze, this.zzg, this.zzj, this.zzh);
        this.zzk = zzvVar;
        this.zzl = zzcq.zza(new zzm(this.zzb, zzvVar, this.zze));
    }

    public /* synthetic */ zzag(Application application, zzaf zzafVar) {
        this(application);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzc
    public final zzj zza() {
        return this.zzl.zza();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzc
    public final zzaz zzb() {
        return this.zze.zza();
    }
}
