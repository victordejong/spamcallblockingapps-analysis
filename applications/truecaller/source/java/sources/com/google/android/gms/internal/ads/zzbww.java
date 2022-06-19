package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.tenor.android.core.constant.StringConstant;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbww.class */
public final class zzbww<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {
    private final zzbvm zza;

    public zzbww(zzbvm zzbvmVar) {
        this.zza = zzbvmVar;
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzcgt.zzd("Adapter called onClick.");
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", null);
            zzcgm.zza.post(new zzbwn(this));
            return;
        }
        try {
            this.zza.zze();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzcgt.zzd("Adapter called onDismissScreen.");
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzi("#008 Must be called on the main UI thread.");
            zzcgm.zza.post(new zzbwo(this));
            return;
        }
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzcgt.zzd("Adapter called onDismissScreen.");
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", null);
            zzcgm.zza.post(new zzbwt(this));
            return;
        }
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        valueOf.length();
        zzcgt.zzd("Adapter called onFailedToReceiveAd with error. ".concat(valueOf));
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", null);
            zzcgm.zza.post(new zzbwp(this, errorCode));
            return;
        }
        try {
            this.zza.zzg(zzbwx.zza(errorCode));
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(valueOf.length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(StringConstant.DOT);
        zzcgt.zzd(sb.toString());
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", null);
            zzcgm.zza.post(new zzbwu(this, errorCode));
            return;
        }
        try {
            this.zza.zzg(zzbwx.zza(errorCode));
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzcgt.zzd("Adapter called onLeaveApplication.");
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", null);
            zzcgm.zza.post(new zzbwq(this));
            return;
        }
        try {
            this.zza.zzh();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzcgt.zzd("Adapter called onLeaveApplication.");
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", null);
            zzcgm.zza.post(new zzbwv(this));
            return;
        }
        try {
            this.zza.zzh();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzcgt.zzd("Adapter called onPresentScreen.");
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", null);
            zzcgm.zza.post(new zzbwr(this));
            return;
        }
        try {
            this.zza.zzi();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzcgt.zzd("Adapter called onPresentScreen.");
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", null);
            zzcgm.zza.post(new zzbwl(this));
            return;
        }
        try {
            this.zza.zzi();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzcgt.zzd("Adapter called onReceivedAd.");
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", null);
            zzcgm.zza.post(new zzbws(this));
            return;
        }
        try {
            this.zza.zzj();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzcgt.zzd("Adapter called onReceivedAd.");
        zzber.zza();
        if (!zzcgm.zzp()) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", null);
            zzcgm.zza.post(new zzbwm(this));
            return;
        }
        try {
            this.zza.zzj();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }
}
