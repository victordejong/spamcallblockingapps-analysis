package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* renamed from: com.google.android.gms.internal.ads.nq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nq.class */
final class C12778nq implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12752ms f49594a;

    /* renamed from: b */
    private final /* synthetic */ BinderC12775nn f49595b;

    public C12778nq(BinderC12775nn binderC12775nn, AbstractC12752ms abstractC12752ms) {
        this.f49595b = binderC12775nn;
        this.f49594a = abstractC12752ms;
    }

    /* renamed from: a */
    public final MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        try {
            this.f49595b.f49587g = unifiedNativeAdMapper;
            this.f49594a.mo14418e();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        return new C12773nl(this.f49594a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.f49595b.f49581a;
            String canonicalName = obj.getClass().getCanonicalName();
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
            this.f49594a.mo14427a(adError.zzdr());
            this.f49594a.mo14433a(adError.getCode(), adError.getMessage());
            this.f49594a.mo14434a(adError.getCode());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
