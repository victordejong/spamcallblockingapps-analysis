package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzw.class */
public final class zzzw implements MediaContent {
    private final VideoController zzckl = new VideoController();
    private final zzaem zzclh;

    public zzzw(zzaem zzaemVar) {
        this.zzclh = zzaemVar;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getAspectRatio() {
        try {
            return this.zzclh.getAspectRatio();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getCurrentTime() {
        try {
            return this.zzclh.getCurrentTime();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getDuration() {
        try {
            return this.zzclh.getDuration();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final Drawable getMainImage() {
        try {
            IObjectWrapper zztl = this.zzclh.zztl();
            if (zztl == null) {
                return null;
            }
            return (Drawable) ObjectWrapper.unwrap(zztl);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final VideoController getVideoController() {
        try {
            if (this.zzclh.getVideoController() != null) {
                this.zzckl.zza(this.zzclh.getVideoController());
            }
        } catch (RemoteException e) {
            zzazk.zzc("Exception occurred while getting video controller", e);
        }
        return this.zzckl;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final boolean hasVideoContent() {
        try {
            return this.zzclh.hasVideoContent();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final void setMainImage(Drawable drawable) {
        try {
            this.zzclh.zzo(ObjectWrapper.wrap(drawable));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    public final zzaem zzrt() {
        return this.zzclh;
    }
}
