package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nl.class */
public final class nl implements MediationBannerAdCallback, MediationInterstitialAdCallback, MediationNativeAdCallback {

    /* renamed from: a  reason: collision with root package name */
    private final ms f28219a;

    public nl(ms msVar) {
        this.f28219a = msVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdOpened.");
        try {
            this.f28219a.d();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    public final void onAdFailedToShow(AdError adError) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdFailedToShow.");
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
        za.zzez(sb.toString());
        try {
            this.f28219a.b(adError.zzdr());
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    public final void onAdFailedToShow(String str) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdFailedToShow.");
        String valueOf = String.valueOf(str);
        za.zzez(valueOf.length() != 0 ? "Mediation ad failed to show: ".concat(valueOf) : new String("Mediation ad failed to show: "));
        try {
            this.f28219a.b(str);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdCallback, com.google.android.gms.ads.mediation.MediationInterstitialAdCallback, com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onAdLeftApplication() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.f28219a.c();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdOpened.");
        try {
            this.f28219a.d();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoComplete() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onVideoComplete.");
        try {
            this.f28219a.j();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoMute() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoPause() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onVideoPause.");
        try {
            this.f28219a.i();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoPlay() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onVideoPlay.");
        try {
            this.f28219a.k();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoUnmute() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called reportAdClicked.");
        try {
            this.f28219a.a();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called reportAdImpression.");
        try {
            this.f28219a.f();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
