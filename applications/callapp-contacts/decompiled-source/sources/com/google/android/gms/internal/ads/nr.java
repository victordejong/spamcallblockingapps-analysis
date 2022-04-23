package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nr.class */
public final class nr implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ms f28232a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ nn f28233b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nr(nn nnVar, ms msVar) {
        this.f28233b = nnVar;
        this.f28232a = msVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        try {
            this.f28233b.f = mediationInterstitialAd;
            this.f28232a.e();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
        return new nl(this.f28232a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.f28233b.f28223a;
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
            za.zzdz(sb.toString());
            this.f28232a.a(adError.zzdr());
            this.f28232a.a(adError.getCode(), adError.getMessage());
            this.f28232a.a(adError.getCode());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
