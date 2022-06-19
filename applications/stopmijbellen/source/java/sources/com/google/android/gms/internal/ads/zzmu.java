package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmu.class */
public final class zzmu implements zzlw {
    public final /* synthetic */ zzmv zza;

    public /* synthetic */ zzmu(zzmv zzmvVar, zzmt zzmtVar) {
        this.zza = zzmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zza(Exception exc) {
        zzls zzlsVar;
        zzep.zza("MediaCodecAudioRenderer", "Audio sink error", exc);
        zzlsVar = this.zza.zzc;
        zzlsVar.zzb(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zzb() {
        zzik zzikVar;
        zzik zzikVar2;
        zzikVar = this.zza.zzl;
        if (zzikVar != null) {
            zzikVar2 = this.zza.zzl;
            zzikVar2.zzb();
        }
    }
}
