package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
/* renamed from: com.google.android.gms.internal.ads.no */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/no.class */
public final class C12776no implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12752ms f49591a;

    /* renamed from: b */
    private final /* synthetic */ BinderC12775nn f49592b;

    public C12776no(BinderC12775nn binderC12775nn, AbstractC12752ms abstractC12752ms) {
        this.f49592b = binderC12775nn;
        this.f49591a = abstractC12752ms;
    }

    /* renamed from: a */
    public final MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        try {
            this.f49592b.f49585e = mediationBannerAd.getView();
            this.f49591a.mo14418e();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        return new C12773nl(this.f49591a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.f49592b.f49581a;
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
            this.f49591a.mo14427a(adError.zzdr());
            this.f49591a.mo14433a(adError.getCode(), adError.getMessage());
            this.f49591a.mo14434a(adError.getCode());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
