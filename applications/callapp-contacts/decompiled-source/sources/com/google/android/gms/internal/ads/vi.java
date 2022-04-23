package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vi.class */
public final class vi implements MediationRewardedAdCallback {

    /* renamed from: a  reason: collision with root package name */
    private final ms f28429a;

    public vi(ms msVar) {
        this.f28429a = msVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdClosed.");
        try {
            this.f28429a.b();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
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
            this.f28429a.b(adError.zzdr());
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onAdFailedToShow(String str) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdFailedToShow.");
        String valueOf = String.valueOf(str);
        za.zzez(valueOf.length() != 0 ? "Mediation ad failed to show: ".concat(valueOf) : new String("Mediation ad failed to show: "));
        try {
            this.f28429a.b(str);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdOpened.");
        try {
            this.f28429a.d();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onUserEarnedReward(RewardItem rewardItem) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onUserEarnedReward.");
        try {
            this.f28429a.a(new vm(rewardItem));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoComplete() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onVideoComplete.");
        try {
            this.f28429a.j();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoStart() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onVideoStart.");
        try {
            this.f28429a.h();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called reportAdClicked.");
        try {
            this.f28429a.a();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called reportAdImpression.");
        try {
            this.f28429a.f();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
