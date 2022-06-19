package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmp.class */
public final class zzmp extends AudioTrack.StreamEventCallback {
    public final /* synthetic */ zzmr zza;
    public final /* synthetic */ zzmq zzb;

    public zzmp(zzmq zzmqVar, zzmr zzmrVar) {
        this.zzb = zzmqVar;
        this.zza = zzmrVar;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i) {
        AudioTrack audioTrack2;
        zzlw zzlwVar;
        boolean z;
        zzlw zzlwVar2;
        audioTrack2 = this.zzb.zza.zzn;
        zzdy.zzf(audioTrack == audioTrack2);
        zzlwVar = this.zzb.zza.zzk;
        if (zzlwVar != null) {
            z = this.zzb.zza.zzI;
            if (!z) {
                return;
            }
            zzlwVar2 = this.zzb.zza.zzk;
            zzlwVar2.zzb();
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        AudioTrack audioTrack2;
        zzlw zzlwVar;
        boolean z;
        zzlw zzlwVar2;
        audioTrack2 = this.zzb.zza.zzn;
        zzdy.zzf(audioTrack == audioTrack2);
        zzlwVar = this.zzb.zza.zzk;
        if (zzlwVar != null) {
            z = this.zzb.zza.zzI;
            if (!z) {
                return;
            }
            zzlwVar2 = this.zzb.zza.zzk;
            zzlwVar2.zzb();
        }
    }
}
