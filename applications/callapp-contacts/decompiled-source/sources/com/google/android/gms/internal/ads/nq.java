package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nq.class */
final class nq implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ms f28230a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ nn f28231b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nq(nn nnVar, ms msVar) {
        this.f28231b = nnVar;
        this.f28230a = msVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        try {
            this.f28231b.g = unifiedNativeAdMapper;
            this.f28230a.e();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
        return new nl(this.f28230a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.f28231b.f28223a;
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
            this.f28230a.a(adError.zzdr());
            this.f28230a.a(adError.getCode(), adError.getMessage());
            this.f28230a.a(adError.getCode());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
