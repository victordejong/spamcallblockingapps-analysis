package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhw.class */
public final class zzbhw implements MediaContent {
    private final zzbme zza;
    private final VideoController zzb = new VideoController();

    public zzbhw(zzbme zzbmeVar) {
        this.zza = zzbmeVar;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getAspectRatio() {
        try {
            return this.zza.zze();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getCurrentTime() {
        try {
            return this.zza.zzi();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getDuration() {
        try {
            return this.zza.zzh();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final Drawable getMainImage() {
        try {
            IObjectWrapper zzg = this.zza.zzg();
            if (zzg == null) {
                return null;
            }
            return (Drawable) ObjectWrapper.m38746B1(zzg);
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final VideoController getVideoController() {
        try {
            if (this.zza.zzj() != null) {
                this.zzb.zza(this.zza.zzj());
            }
        } catch (RemoteException e) {
            zzcgt.zzg("Exception occurred while getting video controller", e);
        }
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final boolean hasVideoContent() {
        try {
            return this.zza.zzk();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final void setMainImage(Drawable drawable) {
        try {
            this.zza.zzf(new ObjectWrapper(drawable));
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    public final zzbme zza() {
        return this.zza;
    }
}
