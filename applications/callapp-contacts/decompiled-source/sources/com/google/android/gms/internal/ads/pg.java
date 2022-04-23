package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pg.class */
final class pg implements MediationBannerAdCallback, MediationInterstitialAdCallback, MediationNativeAdCallback, MediationRewardedAdCallback {

    /* renamed from: a  reason: collision with root package name */
    private ms f28277a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pg(ms msVar) {
        this.f28277a = msVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() {
        try {
            this.f28277a.b();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    public final void onAdFailedToShow(AdError adError) {
        try {
            int code = adError.getCode();
            String message = adError.getMessage();
            String domain = adError.getDomain();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 86 + String.valueOf(domain).length());
            sb.append("Mediated ad failed to show: Error Code = ");
            sb.append(code);
            sb.append(". Error Message = ");
            sb.append(message);
            sb.append(" Error Domain = ");
            sb.append(domain);
            za.zzez(sb.toString());
            this.f28277a.b(adError.zzdr());
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    public final void onAdFailedToShow(String str) {
        try {
            String valueOf = String.valueOf(str);
            za.zzez(valueOf.length() != 0 ? "Mediated ad failed to show: ".concat(valueOf) : new String("Mediated ad failed to show: "));
            this.f28277a.b(str);
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdCallback, com.google.android.gms.ads.mediation.MediationInterstitialAdCallback, com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onAdLeftApplication() {
        try {
            this.f28277a.c();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() {
        try {
            this.f28277a.d();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onUserEarnedReward(RewardItem rewardItem) {
        try {
            this.f28277a.a(new vm(rewardItem));
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoComplete() {
        try {
            this.f28277a.g();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoMute() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoPause() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoPlay() {
        try {
            this.f28277a.k();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoStart() {
        try {
            this.f28277a.h();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoUnmute() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        try {
            this.f28277a.a();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        try {
            this.f28277a.f();
        } catch (RemoteException e) {
        }
    }
}
