package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvi.class */
public final class zzdvi extends VideoController.VideoLifecycleCallbacks {
    private final zzdqc zza;

    public zzdvi(zzdqc zzdqcVar) {
        this.zza = zzdqcVar;
    }

    private static zzbjc zza(zzdqc zzdqcVar) {
        zzbiz zzj = zzdqcVar.zzj();
        if (zzj == null) {
            return null;
        }
        try {
            return zzj.zzi();
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        zzbjc zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zze();
        } catch (RemoteException e) {
            zzciz.zzk("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        zzbjc zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zzg();
        } catch (RemoteException e) {
            zzciz.zzk("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        zzbjc zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zzi();
        } catch (RemoteException e) {
            zzciz.zzk("Unable to call onVideoEnd()", e);
        }
    }
}
