package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmq.class */
public final class zzdmq extends zzauq {
    private final zzdnk zzfyy;
    private boolean zzgyo = false;
    private final zzdmc zzhip;
    private final zzdlh zzhiq;
    private zzchb zzhir;

    public zzdmq(zzdmc zzdmcVar, zzdlh zzdlhVar, zzdnk zzdnkVar) {
        this.zzhip = zzdmcVar;
        this.zzhiq = zzdlhVar;
        this.zzfyy = zzdnkVar;
    }

    private final boolean zzasm() {
        boolean z;
        synchronized (this) {
            zzchb zzchbVar = this.zzhir;
            if (zzchbVar != null) {
                if (!zzchbVar.isClosed()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void destroy() throws RemoteException {
        zzl(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata can only be called from the UI thread.");
        zzchb zzchbVar = this.zzhir;
        return zzchbVar != null ? zzchbVar.getAdMetadata() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final String getMediationAdapterClassName() throws RemoteException {
        synchronized (this) {
            zzchb zzchbVar = this.zzhir;
            if (zzchbVar == null || zzchbVar.zzakr() == null) {
                return null;
            }
            return this.zzhir.zzakr().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final boolean isLoaded() throws RemoteException {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzasm();
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void pause() {
        zzj(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void resume() {
        zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void setAppPackageName(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void setCustomData(String str) throws RemoteException {
        synchronized (this) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcpk)).booleanValue()) {
                return;
            }
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setCustomData");
            this.zzfyy.zzdzi = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void setImmersiveMode(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
            this.zzgyo = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void setUserId(String str) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("setUserId must be called on the main UI thread.");
            this.zzfyy.zzdzh = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void show() throws RemoteException {
        synchronized (this) {
            zzi(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzaup zzaupVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.zzhiq.zzb(zzaupVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzauu zzauuVar) throws RemoteException {
        Preconditions.checkMainThread("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzhiq.zzb(zzauuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzava zzavaVar) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            if (zzabr.zzcp(zzavaVar.zzbut)) {
                return;
            }
            if (zzasm()) {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcwh)).booleanValue()) {
                    return;
                }
            }
            zzdmd zzdmdVar = new zzdmd(null);
            this.zzhir = null;
            this.zzhip.zzec(zzdnh.zzhkk);
            this.zzhip.zza(zzavaVar.zzdud, zzavaVar.zzbut, zzdmdVar, new zzdmt(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzxs zzxsVar) {
        Preconditions.checkMainThread("setAdMetadataListener can only be called from the UI thread.");
        if (zzxsVar == null) {
            this.zzhiq.zza(null);
        } else {
            this.zzhiq.zza(new zzdms(this, zzxsVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        Activity activity;
        synchronized (this) {
            Preconditions.checkMainThread("showAd must be called on the main UI thread.");
            if (this.zzhir == null) {
                return;
            }
            if (iObjectWrapper != null) {
                Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                if (unwrap instanceof Activity) {
                    activity = (Activity) unwrap;
                    this.zzhir.zzb(this.zzgyo, activity);
                }
            }
            activity = null;
            this.zzhir.zzb(this.zzgyo, activity);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zzj(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
            if (this.zzhir != null) {
                this.zzhir.zzakq().zzcb(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zzk(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
            if (this.zzhir != null) {
                this.zzhir.zzakq().zzcc(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final zzyx zzki() throws RemoteException {
        synchronized (this) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue()) {
                return null;
            }
            zzchb zzchbVar = this.zzhir;
            if (zzchbVar == null) {
                return null;
            }
            return zzchbVar.zzakr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zzl(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            this.zzhiq.zza(null);
            if (this.zzhir != null) {
                this.zzhir.zzakq().zzcd(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final boolean zzrw() {
        zzchb zzchbVar = this.zzhir;
        return zzchbVar != null && zzchbVar.zzrw();
    }
}
