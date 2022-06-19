package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaol.class */
public final class zzaol<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {
    private final zzank zzdnw;

    public zzaol(zzank zzankVar) {
        this.zzdnw = zzankVar;
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzazk.zzdy("Adapter called onClick.");
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zze("#008 Must be called on the main UI thread.", null);
            zzaza.zzaac.post(new zzaok(this));
            return;
        }
        try {
            this.zzdnw.onAdClicked();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzazk.zzdy("Adapter called onDismissScreen.");
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zzex("#008 Must be called on the main UI thread.");
            zzaza.zzaac.post(new zzaop(this));
            return;
        }
        try {
            this.zzdnw.onAdClosed();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzazk.zzdy("Adapter called onDismissScreen.");
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zze("#008 Must be called on the main UI thread.", null);
            zzaza.zzaac.post(new zzaos(this));
            return;
        }
        try {
            this.zzdnw.onAdClosed();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(valueOf);
        zzazk.zzdy(sb.toString());
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zze("#008 Must be called on the main UI thread.", null);
            zzaza.zzaac.post(new zzaoo(this, errorCode));
            return;
        }
        try {
            this.zzdnw.onAdFailedToLoad(zzaox.zza(errorCode));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(".");
        zzazk.zzdy(sb.toString());
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zze("#008 Must be called on the main UI thread.", null);
            zzaza.zzaac.post(new zzaov(this, errorCode));
            return;
        }
        try {
            this.zzdnw.onAdFailedToLoad(zzaox.zza(errorCode));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzazk.zzdy("Adapter called onLeaveApplication.");
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zze("#008 Must be called on the main UI thread.", null);
            zzaza.zzaac.post(new zzaor(this));
            return;
        }
        try {
            this.zzdnw.onAdLeftApplication();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzazk.zzdy("Adapter called onLeaveApplication.");
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zze("#008 Must be called on the main UI thread.", null);
            zzaza.zzaac.post(new zzaou(this));
            return;
        }
        try {
            this.zzdnw.onAdLeftApplication();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzazk.zzdy("Adapter called onPresentScreen.");
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zze("#008 Must be called on the main UI thread.", null);
            zzaza.zzaac.post(new zzaoq(this));
            return;
        }
        try {
            this.zzdnw.onAdOpened();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzazk.zzdy("Adapter called onPresentScreen.");
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zze("#008 Must be called on the main UI thread.", null);
            zzaza.zzaac.post(new zzaon(this));
            return;
        }
        try {
            this.zzdnw.onAdOpened();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzazk.zzdy("Adapter called onReceivedAd.");
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zze("#008 Must be called on the main UI thread.", null);
            zzaza.zzaac.post(new zzaot(this));
            return;
        }
        try {
            this.zzdnw.onAdLoaded();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzazk.zzdy("Adapter called onReceivedAd.");
        zzwr.zzqn();
        if (!zzaza.zzzx()) {
            zzazk.zze("#008 Must be called on the main UI thread.", null);
            zzaza.zzaac.post(new zzaom(this));
            return;
        }
        try {
            this.zzdnw.onAdLoaded();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
