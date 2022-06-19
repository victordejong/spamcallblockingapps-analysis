package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
/* renamed from: com.google.android.gms.internal.ads.nr */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nr.class */
public final class C12779nr implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12752ms f49596a;

    /* renamed from: b */
    private final /* synthetic */ BinderC12775nn f49597b;

    public C12779nr(BinderC12775nn binderC12775nn, AbstractC12752ms abstractC12752ms) {
        this.f49597b = binderC12775nn;
        this.f49596a = abstractC12752ms;
    }

    /* renamed from: a */
    public final MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        try {
            this.f49597b.f49586f = mediationInterstitialAd;
            this.f49596a.mo14418e();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        return new C12773nl(this.f49596a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.f49597b.f49581a;
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
            C13088za.zzdz(sb.toString());
            this.f49596a.mo14427a(adError.zzdr());
            this.f49596a.mo14433a(adError.getCode(), adError.getMessage());
            this.f49596a.mo14434a(adError.getCode());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
