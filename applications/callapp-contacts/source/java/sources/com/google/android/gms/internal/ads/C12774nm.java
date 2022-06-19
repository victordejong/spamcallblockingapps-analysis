package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
/* renamed from: com.google.android.gms.internal.ads.nm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nm.class */
final class C12774nm implements MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12752ms f49578a;

    /* renamed from: b */
    private final /* synthetic */ Adapter f49579b;

    /* renamed from: c */
    private final /* synthetic */ BinderC12775nn f49580c;

    public C12774nm(BinderC12775nn binderC12775nn, AbstractC12752ms abstractC12752ms, Adapter adapter) {
        this.f49580c = binderC12775nn;
        this.f49578a = abstractC12752ms;
        this.f49579b = adapter;
    }

    /* renamed from: a */
    public final MediationBannerAdCallback onSuccess(MediationInterscrollerAd mediationInterscrollerAd) {
        try {
            this.f49580c.f49589i = mediationInterscrollerAd;
            this.f49578a.mo14418e();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        return new C12773nl(this.f49578a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            String canonicalName = this.f49579b.getClass().getCanonicalName();
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
            C13088za.zzdz(sb.toString());
            this.f49578a.mo14427a(adError.zzdr());
            this.f49578a.mo14433a(adError.getCode(), adError.getMessage());
            this.f49578a.mo14434a(adError.getCode());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
