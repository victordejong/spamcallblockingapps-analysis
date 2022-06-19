package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnc.class */
public final class zzbnc implements NativeCustomTemplateAd {
    private final zzbnb zza;
    private final MediaView zzb;
    private final VideoController zzc = new VideoController();
    private NativeCustomTemplateAd.DisplayOpenMeasurement zzd;

    @VisibleForTesting
    public zzbnc(zzbnb zzbnbVar) {
        Context context;
        this.zza = zzbnbVar;
        try {
            context = (Context) ObjectWrapper.m38746B1(zzbnbVar.zzm());
        } catch (RemoteException | NullPointerException e) {
            zzcgt.zzg("", e);
            context = null;
        }
        MediaView mediaView = null;
        if (context != null) {
            mediaView = new MediaView(context);
            try {
                if (true != this.zza.zzn(new ObjectWrapper(mediaView))) {
                    mediaView = null;
                }
            } catch (RemoteException e2) {
                zzcgt.zzg("", e2);
                mediaView = null;
            }
        }
        this.zzb = mediaView;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void destroy() {
        try {
            this.zza.zzl();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.zza.zzg();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final String getCustomTemplateId() {
        try {
            return this.zza.zzh();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeCustomTemplateAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.zzd == null && this.zza.zzo()) {
                this.zzd = new zzbmb(this.zza);
            }
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeAd.Image getImage(String str) {
        try {
            zzbmh zzf = this.zza.zzf(str);
            if (zzf == null) {
                return null;
            }
            return new zzbmi(zzf);
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final CharSequence getText(String str) {
        try {
            return this.zza.zze(str);
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final VideoController getVideoController() {
        try {
            zzbhc zzk = this.zza.zzk();
            if (zzk != null) {
                this.zzc.zza(zzk);
            }
        } catch (RemoteException e) {
            zzcgt.zzg("Exception occurred while getting video controller", e);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final MediaView getVideoMediaView() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void performClick(String str) {
        try {
            this.zza.zzi(str);
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void recordImpression() {
        try {
            this.zza.zzj();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    public final zzbnb zza() {
        return this.zza;
    }
}
