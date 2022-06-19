package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgx.class */
public final class zzcgx extends VideoController.VideoLifecycleCallbacks {
    private final zzccd zzgch;

    public zzcgx(zzccd zzccdVar) {
        this.zzgch = zzccdVar;
    }

    private static zzzd zza(zzccd zzccdVar) {
        zzzc videoController = zzccdVar.getVideoController();
        if (videoController == null) {
            return null;
        }
        try {
            return videoController.zzrg();
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        zzzd zza = zza(this.zzgch);
        if (zza == null) {
            return;
        }
        try {
            zza.onVideoEnd();
        } catch (RemoteException e) {
            zzd.zzd("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        zzzd zza = zza(this.zzgch);
        if (zza == null) {
            return;
        }
        try {
            zza.onVideoPause();
        } catch (RemoteException e) {
            zzd.zzd("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        zzzd zza = zza(this.zzgch);
        if (zza == null) {
            return;
        }
        try {
            zza.onVideoStart();
        } catch (RemoteException e) {
            zzd.zzd("Unable to call onVideoEnd()", e);
        }
    }
}
