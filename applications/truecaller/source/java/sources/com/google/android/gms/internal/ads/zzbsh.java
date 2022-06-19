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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbsh.class */
public final class zzbsh<AdT> extends AdManagerInterstitialAd {
    private final Context zza;
    private final zzbdk zzb = zzbdk.zza;
    private final zzbfn zzc;
    private final String zzd;
    private final zzbvd zze;
    private AppEventListener zzf;
    private FullScreenContentCallback zzg;
    private OnPaidEventListener zzh;

    public zzbsh(Context context, String str) {
        zzbvd zzbvdVar = new zzbvd();
        this.zze = zzbvdVar;
        this.zza = context;
        this.zzd = str;
        this.zzc = zzber.zzb().zzk(context, new zzbdl(), str, zzbvdVar);
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
        zzbgz zzbgzVar;
        try {
            zzbfn zzbfnVar = this.zzc;
            zzbgzVar = null;
            if (zzbfnVar != null) {
                zzbgzVar = zzbfnVar.zzA();
            }
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
            zzbgzVar = null;
        }
        return ResponseInfo.zzc(zzbgzVar);
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzf = appEventListener;
            zzbfn zzbfnVar = this.zzc;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzp(appEventListener != null ? new zzawr(appEventListener) : null);
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.zzg = fullScreenContentCallback;
            zzbfn zzbfnVar = this.zzc;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzaa(new zzbeu(fullScreenContentCallback));
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            zzbfn zzbfnVar = this.zzc;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzQ(z);
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzh = onPaidEventListener;
            zzbfn zzbfnVar = this.zzc;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzX(new zzbil(onPaidEventListener));
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void show(Activity activity) {
        if (activity == null) {
            zzcgt.zzi("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            zzbfn zzbfnVar = this.zzc;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzZ(new ObjectWrapper(activity));
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzbhj zzbhjVar, AdLoadCallback<AdT> adLoadCallback) {
        try {
            if (this.zzc == null) {
                return;
            }
            this.zze.zze(zzbhjVar.zzn());
            this.zzc.zzY(this.zzb.zza(this.zza, zzbhjVar), new zzbdc(adLoadCallback, this));
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
            adLoadCallback.onAdFailedToLoad(new LoadAdError(0, "Internal Error.", MobileAds.ERROR_DOMAIN, null, null));
        }
    }
}
