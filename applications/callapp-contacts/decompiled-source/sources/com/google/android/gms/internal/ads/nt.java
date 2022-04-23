package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nt.class */
public final class nt implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ms f28235a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ nn f28236b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nt(nn nnVar, ms msVar) {
        this.f28236b = nnVar;
        this.f28235a = msVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        try {
            this.f28236b.h = mediationRewardedAd;
            this.f28235a.e();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
        return new vi(this.f28235a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.f28236b.f28223a;
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
            za.zzdz(sb.toString());
            this.f28235a.a(adError.zzdr());
            this.f28235a.a(adError.getCode(), adError.getMessage());
            this.f28235a.a(adError.getCode());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        Object obj;
        try {
            obj = this.f28236b.f28223a;
            String canonicalName = obj.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 31 + String.valueOf(str).length());
            sb.append(canonicalName);
            sb.append("failed to loaded mediation ad: ");
            sb.append(str);
            za.zzdz(sb.toString());
            this.f28235a.a(0, str);
            this.f28235a.a(0);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
