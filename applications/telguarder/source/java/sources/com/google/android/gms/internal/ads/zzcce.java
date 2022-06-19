package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcce.class */
public final class zzcce extends zzzb {
    private final Object lock = new Object();
    @Nullable
    private zzzc zzges;
    @Nullable
    private final zzanx zzget;

    public zzcce(@Nullable zzzc zzzcVar, @Nullable zzanx zzanxVar) {
        this.zzges = zzzcVar;
        this.zzget = zzanxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getAspectRatio() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getCurrentTime() throws RemoteException {
        zzanx zzanxVar = this.zzget;
        if (zzanxVar != null) {
            return zzanxVar.getVideoCurrentTime();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getDuration() throws RemoteException {
        zzanx zzanxVar = this.zzget;
        if (zzanxVar != null) {
            return zzanxVar.getVideoDuration();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final int getPlaybackState() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isClickToExpandEnabled() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isCustomControlsEnabled() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isMuted() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void mute(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void play() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void stop() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zza(zzzd zzzdVar) throws RemoteException {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzges;
            if (zzzcVar != null) {
                zzzcVar.zza(zzzdVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final zzzd zzrg() throws RemoteException {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzges;
            if (zzzcVar != null) {
                return zzzcVar.zzrg();
            }
            return null;
        }
    }
}
