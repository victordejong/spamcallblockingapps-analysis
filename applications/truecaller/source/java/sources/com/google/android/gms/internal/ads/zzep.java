package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzep.class */
public final class zzep implements zzdt {
    public final /* synthetic */ zzer zza;

    public /* synthetic */ zzep(zzer zzerVar, zzeq zzeqVar) {
        this.zza = zzerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final void zza() {
        zzahu zzahuVar;
        zzahu zzahuVar2;
        zzahuVar = this.zza.zzl;
        if (zzahuVar != null) {
            zzahuVar2 = this.zza.zzl;
            zzahuVar2.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final void zzb(Exception exc) {
        zzdp zzdpVar;
        zzaln.zzb("MediaCodecAudioRenderer", "Audio sink error", exc);
        zzdpVar = this.zza.zzc;
        zzdpVar.zzi(exc);
    }
}
