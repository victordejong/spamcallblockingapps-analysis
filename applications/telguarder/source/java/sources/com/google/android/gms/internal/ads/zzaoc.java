package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoc.class */
public final class zzaoc implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {
    private final /* synthetic */ zzank zzdns;
    private final /* synthetic */ zzaoa zzdnt;

    public zzaoc(zzaoa zzaoaVar, zzank zzankVar) {
        this.zzdnt = zzaoaVar;
        this.zzdns = zzankVar;
    }

    /* renamed from: zza */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        try {
            this.zzdnt.zzdnp = mediationRewardedAd;
            this.zzdns.onAdLoaded();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
        return new zzawj(this.zzdns);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.zzdnt.zzdnl;
            String canonicalName = obj.getClass().getCanonicalName();
            int code = adError.getCode();
            String message = adError.getMessage();
            String domain = adError.getDomain();
            int length = String.valueOf(canonicalName).length();
            StringBuilder sb = new StringBuilder(length + 87 + String.valueOf(message).length() + String.valueOf(domain).length());
            sb.append(canonicalName);
            sb.append("failed to loaded mediation ad: ErrorCode = ");
            sb.append(code);
            sb.append(". ErrorMessage = ");
            sb.append(message);
            sb.append(". ErrorDomain = ");
            sb.append(domain);
            zzazk.zzdy(sb.toString());
            this.zzdns.zzd(adError.zzdq());
            this.zzdns.zzc(adError.getCode(), adError.getMessage());
            this.zzdns.onAdFailedToLoad(adError.getCode());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        Object obj;
        try {
            obj = this.zzdnt.zzdnl;
            String canonicalName = obj.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 31 + String.valueOf(str).length());
            sb.append(canonicalName);
            sb.append("failed to loaded mediation ad: ");
            sb.append(str);
            zzazk.zzdy(sb.toString());
            this.zzdns.zzc(0, str);
            this.zzdns.onAdFailedToLoad(0);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
