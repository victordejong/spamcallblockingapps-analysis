package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrr.class */
public final class zzdrr extends VideoController.VideoLifecycleCallbacks {
    private final zzdmm zza;

    public zzdrr(zzdmm zzdmmVar) {
        this.zza = zzdmmVar;
    }

    private static zzbhf zza(zzdmm zzdmmVar) {
        zzbhc zzw = zzdmmVar.zzw();
        if (zzw == null) {
            return null;
        }
        try {
            return zzw.zzo();
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        zzbhf zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zzh();
        } catch (RemoteException e) {
            zzcgt.zzj("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        zzbhf zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zzg();
        } catch (RemoteException e) {
            zzcgt.zzj("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        zzbhf zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zze();
        } catch (RemoteException e) {
            zzcgt.zzj("Unable to call onVideoEnd()", e);
        }
    }
}
