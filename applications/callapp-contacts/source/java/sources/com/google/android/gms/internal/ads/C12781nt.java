package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
/* renamed from: com.google.android.gms.internal.ads.nt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nt.class */
public final class C12781nt implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12752ms f49599a;

    /* renamed from: b */
    private final /* synthetic */ BinderC12775nn f49600b;

    public C12781nt(BinderC12775nn binderC12775nn, AbstractC12752ms abstractC12752ms) {
        this.f49600b = binderC12775nn;
        this.f49599a = abstractC12752ms;
    }

    /* renamed from: a */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        try {
            this.f49600b.f49588h = mediationRewardedAd;
            this.f49599a.mo14418e();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        return new C12986vi(this.f49599a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.f49600b.f49581a;
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
            this.f49599a.mo14427a(adError.zzdr());
            this.f49599a.mo14433a(adError.getCode(), adError.getMessage());
            this.f49599a.mo14434a(adError.getCode());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        Object obj;
        try {
            obj = this.f49600b.f49581a;
            String canonicalName = obj.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 31 + String.valueOf(str).length());
            sb.append(canonicalName);
            sb.append("failed to loaded mediation ad: ");
            sb.append(str);
            C13088za.zzdz(sb.toString());
            this.f49599a.mo14433a(0, str);
            this.f49599a.mo14434a(0);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
