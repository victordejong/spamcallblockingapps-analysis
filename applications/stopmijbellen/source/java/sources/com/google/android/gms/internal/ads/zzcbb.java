package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbb.class */
public final class zzcbb implements NativeCustomFormatAd {
    private final zzbpc zza;
    private final MediaView zzb;
    private final VideoController zzc = new VideoController();
    private NativeCustomFormatAd.DisplayOpenMeasurement zzd;

    @VisibleForTesting
    public zzcbb(zzbpc zzbpcVar) {
        Context context;
        this.zza = zzbpcVar;
        try {
            context = (Context) ObjectWrapper.unwrap(zzbpcVar.zzg());
        } catch (RemoteException | NullPointerException e) {
            zzciz.zzh("", e);
            context = null;
        }
        MediaView mediaView = null;
        if (context != null) {
            mediaView = new MediaView(context);
            try {
                if (true != this.zza.zzq(ObjectWrapper.wrap(mediaView))) {
                    mediaView = null;
                }
            } catch (RemoteException e2) {
                zzciz.zzh("", e2);
                mediaView = null;
            }
        }
        this.zzb = mediaView;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void destroy() {
        try {
            this.zza.zzk();
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.zza.zzj();
        } catch (RemoteException e) {
            zzciz.zzh("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final String getCustomFormatId() {
        try {
            return this.zza.zzh();
        } catch (RemoteException e) {
            zzciz.zzh("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final NativeCustomFormatAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.zzd == null && this.zza.zzp()) {
                this.zzd = new zzcat(this.zza);
            }
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final NativeAd.Image getImage(String str) {
        try {
            zzboi zzf = this.zza.zzf(str);
            if (zzf == null) {
                return null;
            }
            return new zzcau(zzf);
        } catch (RemoteException e) {
            zzciz.zzh("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final CharSequence getText(String str) {
        try {
            return this.zza.zzi(str);
        } catch (RemoteException e) {
            zzciz.zzh("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final VideoController getVideoController() {
        try {
            zzbiz zze = this.zza.zze();
            if (zze != null) {
                this.zzc.zzb(zze);
            }
        } catch (RemoteException e) {
            zzciz.zzh("Exception occurred while getting video controller", e);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final MediaView getVideoMediaView() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void performClick(String str) {
        try {
            this.zza.zzm(str);
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void recordImpression() {
        try {
            this.zza.zzn();
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }
}
