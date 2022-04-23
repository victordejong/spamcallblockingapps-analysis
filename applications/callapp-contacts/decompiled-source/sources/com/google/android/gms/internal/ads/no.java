package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/no.class */
public final class no implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ms f28227a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ nn f28228b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public no(nn nnVar, ms msVar) {
        this.f28228b = nnVar;
        this.f28227a = msVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        try {
            this.f28228b.e = mediationBannerAd.getView();
            this.f28227a.e();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
        return new nl(this.f28227a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.f28228b.f28223a;
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
            this.f28227a.a(adError.zzdr());
            this.f28227a.a(adError.getCode(), adError.getMessage());
            this.f28227a.a(adError.getCode());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
