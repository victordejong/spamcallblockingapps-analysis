package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nm.class */
final class nm implements MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ms f28220a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Adapter f28221b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ nn f28222c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nm(nn nnVar, ms msVar, Adapter adapter) {
        this.f28222c = nnVar;
        this.f28220a = msVar;
        this.f28221b = adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationBannerAdCallback onSuccess(MediationInterscrollerAd mediationInterscrollerAd) {
        try {
            this.f28222c.i = mediationInterscrollerAd;
            this.f28220a.e();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
        return new nl(this.f28220a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            String canonicalName = this.f28221b.getClass().getCanonicalName();
            int code = adError.getCode();
            String message = adError.getMessage();
            String domain = adError.getDomain();
            int length = String.valueOf(canonicalName).length();
            StringBuilder sb = new StringBuilder(length + 85 + String.valueOf(message).length() + String.valueOf(domain).length());
            sb.append(canonicalName);
            sb.append("failed to load mediation ad: ErrorCode = ");
            sb.append(code);
            sb.append(". ErrorMessage = ");
            sb.append(message);
            sb.append(". ErrorDomain = ");
            sb.append(domain);
            za.zzdz(sb.toString());
            this.f28220a.a(adError.zzdr());
            this.f28220a.a(adError.getCode(), adError.getMessage());
            this.f28220a.a(adError.getCode());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
