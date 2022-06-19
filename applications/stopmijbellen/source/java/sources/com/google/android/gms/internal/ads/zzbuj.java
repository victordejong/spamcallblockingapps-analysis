package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuj.class */
public final class zzbuj<AdT> extends AdManagerInterstitialAd {
    private final Context zza;
    private final zzbfh zzb = zzbfh.zza;
    private final zzbhk zzc;
    private final String zzd;
    private final zzbxe zze;
    private AppEventListener zzf;
    private FullScreenContentCallback zzg;
    private OnPaidEventListener zzh;

    public zzbuj(Context context, String str) {
        zzbxe zzbxeVar = new zzbxe();
        this.zze = zzbxeVar;
        this.zza = context;
        this.zzd = str;
        this.zzc = zzbgo.zza().zze(context, new zzbfi(), str, zzbxeVar);
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final String getAdUnitId() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final AppEventListener getAppEventListener() {
        return this.zzf;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zzg;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.zzh;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final ResponseInfo getResponseInfo() {
        zzbiw zzbiwVar;
        try {
            zzbhk zzbhkVar = this.zzc;
            zzbiwVar = null;
            if (zzbhkVar != null) {
                zzbiwVar = zzbhkVar.zzk();
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            zzbiwVar = null;
        }
        return ResponseInfo.zzb(zzbiwVar);
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzf = appEventListener;
            zzbhk zzbhkVar = this.zzc;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzG(appEventListener != null ? new zzayo(appEventListener) : null);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.zzg = fullScreenContentCallback;
            zzbhk zzbhkVar = this.zzc;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzJ(new zzbgr(fullScreenContentCallback));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            zzbhk zzbhkVar = this.zzc;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzL(z);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzh = onPaidEventListener;
            zzbhk zzbhkVar = this.zzc;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzP(new zzbkj(onPaidEventListener));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void show(Activity activity) {
        if (activity == null) {
            zzciz.zzj("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            zzbhk zzbhkVar = this.zzc;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzW(ObjectWrapper.wrap(activity));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzbjg zzbjgVar, AdLoadCallback<AdT> adLoadCallback) {
        try {
            if (this.zzc == null) {
                return;
            }
            this.zze.zzd(zzbjgVar.zzr());
            this.zzc.zzy(this.zzb.zza(this.zza, zzbjgVar), new zzbez(adLoadCallback, this));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            adLoadCallback.onAdFailedToLoad(new LoadAdError(0, "Internal Error.", MobileAds.ERROR_DOMAIN, null, null));
        }
    }
}
