package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.ads.nl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nl.class */
public final class C12773nl implements MediationBannerAdCallback, MediationInterstitialAdCallback, MediationNativeAdCallback {

    /* renamed from: a */
    private final AbstractC12752ms f49577a;

    public C12773nl(AbstractC12752ms abstractC12752ms) {
        this.f49577a = abstractC12752ms;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdOpened.");
        try {
            this.f49577a.mo14419d();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    public final void onAdFailedToShow(AdError adError) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdFailedToShow.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 87 + String.valueOf(domain).length());
        sb.append("Mediation ad failed to show: Error Code = ");
        sb.append(code);
        sb.append(". Error Message = ");
        sb.append(message);
        sb.append(" Error Domain = ");
        sb.append(domain);
        C13088za.zzez(sb.toString());
        try {
            this.f49577a.mo14422b(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    public final void onAdFailedToShow(String str) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdFailedToShow.");
        String valueOf = String.valueOf(str);
        C13088za.zzez(valueOf.length() != 0 ? "Mediation ad failed to show: ".concat(valueOf) : new String("Mediation ad failed to show: "));
        try {
            this.f49577a.mo14421b(str);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdCallback, com.google.android.gms.ads.mediation.MediationInterstitialAdCallback, com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onAdLeftApplication() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.f49577a.mo14420c();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdOpened.");
        try {
            this.f49577a.mo14419d();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoComplete() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onVideoComplete.");
        try {
            this.f49577a.mo14413j();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoMute() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoPause() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onVideoPause.");
        try {
            this.f49577a.mo14414i();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoPlay() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onVideoPlay.");
        try {
            this.f49577a.mo14412k();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoUnmute() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called reportAdClicked.");
        try {
            this.f49577a.mo14435a();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called reportAdImpression.");
        try {
            this.f49577a.mo14417f();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
