package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeob.class */
public final class zzeob extends zzbhf {
    @VisibleForTesting
    public final zzfed zza;
    @VisibleForTesting
    public final zzdql zzb = new zzdql();
    private final Context zzc;
    private final zzcqm zzd;
    private zzbgx zze;

    public zzeob(zzcqm zzcqmVar, Context context, String str) {
        zzfed zzfedVar = new zzfed();
        this.zza = zzfedVar;
        this.zzd = zzcqmVar;
        zzfedVar.zzs(str);
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final zzbhd zze() {
        zzdqn zzg = this.zzb.zzg();
        this.zza.zzA(zzg.zzi());
        this.zza.zzB(zzg.zzh());
        zzfed zzfedVar = this.zza;
        if (zzfedVar.zzg() == null) {
            zzfedVar.zzr(zzbfi.zzc());
        }
        return new zzeoc(this.zzc, this.zzd, this.zza, zzg, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzf(zzbpg zzbpgVar) {
        this.zzb.zza(zzbpgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzg(zzbpj zzbpjVar) {
        this.zzb.zzb(zzbpjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzh(String str, zzbpp zzbppVar, zzbpm zzbpmVar) {
        this.zzb.zzc(str, zzbppVar, zzbpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzi(zzbui zzbuiVar) {
        this.zzb.zzd(zzbuiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzj(zzbpt zzbptVar, zzbfi zzbfiVar) {
        this.zzb.zze(zzbptVar);
        this.zza.zzr(zzbfiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzk(zzbpw zzbpwVar) {
        this.zzb.zzf(zzbpwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzl(zzbgx zzbgxVar) {
        this.zze = zzbgxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzm(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zza.zzq(adManagerAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzn(zzbtz zzbtzVar) {
        this.zza.zzv(zzbtzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzo(zzbnw zzbnwVar) {
        this.zza.zzz(zzbnwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzp(PublisherAdViewOptions publisherAdViewOptions) {
        this.zza.zzC(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzq(zzbhv zzbhvVar) {
        this.zza.zzO(zzbhvVar);
    }
}
