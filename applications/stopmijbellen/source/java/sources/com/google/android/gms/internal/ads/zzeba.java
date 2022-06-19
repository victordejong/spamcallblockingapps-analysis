package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeba.class */
public final class zzeba extends zzbtq {
    public final /* synthetic */ Object zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ long zzc;
    public final /* synthetic */ zzcjr zzd;
    public final /* synthetic */ zzebb zze;

    public zzeba(zzebb zzebbVar, Object obj, String str, long j, zzcjr zzcjrVar) {
        this.zze = zzebbVar;
        this.zza = obj;
        this.zzb = str;
        this.zzc = j;
        this.zzd = zzcjrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtr
    public final void zze(String str) {
        zzdzi zzdziVar;
        zzdli zzdliVar;
        synchronized (this.zza) {
            this.zze.zzu(this.zzb, false, str, (int) (zzt.zzA().elapsedRealtime() - this.zzc));
            zzdziVar = this.zze.zzl;
            zzdziVar.zza(this.zzb, "error");
            zzdliVar = this.zze.zzo;
            zzdliVar.zza(this.zzb, "error");
            this.zzd.zzd(Boolean.FALSE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtr
    public final void zzf() {
        zzdzi zzdziVar;
        zzdli zzdliVar;
        synchronized (this.zza) {
            this.zze.zzu(this.zzb, true, "", (int) (zzt.zzA().elapsedRealtime() - this.zzc));
            zzdziVar = this.zze.zzl;
            zzdziVar.zzc(this.zzb);
            zzdliVar = this.zze.zzo;
            zzdliVar.zzc(this.zzb);
            this.zzd.zzd(Boolean.TRUE);
        }
    }
}
