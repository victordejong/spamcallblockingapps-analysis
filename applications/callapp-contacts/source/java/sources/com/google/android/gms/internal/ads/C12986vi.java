package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.ads.vi */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vi.class */
public final class C12986vi implements MediationRewardedAdCallback {

    /* renamed from: a */
    private final AbstractC12752ms f49907a;

    public C12986vi(AbstractC12752ms abstractC12752ms) {
        this.f49907a = abstractC12752ms;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdClosed.");
        try {
            this.f49907a.mo14424b();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
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
            this.f49907a.mo14422b(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onAdFailedToShow(String str) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdFailedToShow.");
        String valueOf = String.valueOf(str);
        C13088za.zzez(valueOf.length() != 0 ? "Mediation ad failed to show: ".concat(valueOf) : new String("Mediation ad failed to show: "));
        try {
            this.f49907a.mo14421b(str);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdOpened.");
        try {
            this.f49907a.mo14419d();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onUserEarnedReward(RewardItem rewardItem) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onUserEarnedReward.");
        try {
            this.f49907a.mo14429a(new BinderC12990vm(rewardItem));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoComplete() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onVideoComplete.");
        try {
            this.f49907a.mo14413j();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoStart() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onVideoStart.");
        try {
            this.f49907a.mo14415h();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called reportAdClicked.");
        try {
            this.f49907a.mo14435a();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called reportAdImpression.");
        try {
            this.f49907a.mo14417f();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
