package com.google.android.gms.internal.ads;

import io.agora.rtc.internal.RtcEngineEvent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdue.class */
public final class zzdue implements zzddx, zzdcq, zzdbf, zzdbw, zzbcv, zzdgj {
    private final zzazb zza;
    private boolean zzb = false;

    public zzdue(zzazb zzazbVar, zzexu zzexuVar) {
        this.zza = zzazbVar;
        zzazbVar.zzc(2);
        if (zzexuVar != null) {
            zzazbVar.zzc(RtcEngineEvent.EvtType.EVT_TRANSPORT_QUALITY);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        synchronized (this) {
            if (this.zzb) {
                this.zza.zzc(8);
                return;
            }
            this.zza.zzc(7);
            this.zzb = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        switch (zzbczVar.zza) {
            case 1:
                this.zza.zzc(101);
                return;
            case 2:
                this.zza.zzc(102);
                return;
            case 3:
                this.zza.zzc(5);
                return;
            case 4:
                this.zza.zzc(103);
                return;
            case 5:
                this.zza.zzc(104);
                return;
            case 6:
                this.zza.zzc(105);
                return;
            case 7:
                this.zza.zzc(106);
                return;
            default:
                this.zza.zzc(4);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzbG(zzcbj zzcbjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzc(zzazu zzazuVar) {
        this.zza.zzb(new zzaza(zzazuVar) { // from class: com.google.android.gms.internal.ads.zzdub
            private final zzazu zza;

            {
                this.zza = zzazuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzaza
            public final void zza(zzbao zzbaoVar) {
                zzbaoVar.zzk(this.zza);
            }
        });
        this.zza.zzc(1103);
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzd(zzazu zzazuVar) {
        this.zza.zzb(new zzaza(zzazuVar) { // from class: com.google.android.gms.internal.ads.zzduc
            private final zzazu zza;

            {
                this.zza = zzazuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzaza
            public final void zza(zzbao zzbaoVar) {
                zzbaoVar.zzk(this.zza);
            }
        });
        this.zza.zzc(RtcEngineEvent.EvtType.EVT_AUDIO_QUALITY);
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zze(zzazu zzazuVar) {
        this.zza.zzb(new zzaza(zzazuVar) { // from class: com.google.android.gms.internal.ads.zzdud
            private final zzazu zza;

            {
                this.zza = zzazuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzaza
            public final void zza(zzbao zzbaoVar) {
                zzbaoVar.zzk(this.zza);
            }
        });
        this.zza.zzc(RtcEngineEvent.EvtType.EVT_MEDIA_ENGINE_EVENT);
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        this.zza.zzc(3);
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        synchronized (this) {
            this.zza.zzc(6);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzn(boolean z) {
        this.zza.zzc(true != z ? 1106 : 1105);
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzo(boolean z) {
        this.zza.zzc(true != z ? 1108 : 1107);
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzp() {
        this.zza.zzc(RtcEngineEvent.EvtType.EVT_CLIENT_ROLE_CHANGED);
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzq(zzfal zzfalVar) {
        this.zza.zzb(new zzaza(zzfalVar) { // from class: com.google.android.gms.internal.ads.zzdua
            private final zzfal zza;

            {
                this.zza = zzfalVar;
            }

            @Override // com.google.android.gms.internal.ads.zzaza
            public final void zza(zzbao zzbaoVar) {
                zzfal zzfalVar2 = this.zza;
                zzazk zzau = zzbaoVar.zzg().zzau();
                zzbac zzau2 = zzbaoVar.zzg().zza().zzau();
                zzau2.zza(zzfalVar2.zzb.zzb.zzb);
                zzau.zzb(zzau2);
                zzbaoVar.zzh(zzau);
            }
        });
    }
}
