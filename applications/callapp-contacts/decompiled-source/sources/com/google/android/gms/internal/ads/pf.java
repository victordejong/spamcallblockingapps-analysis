package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pf.class */
final class pf implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ol f28275a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ms f28276b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pf(pb pbVar, ol olVar, ms msVar) {
        this.f28275a = olVar;
        this.f28276b = msVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        if (unifiedNativeAdMapper == null) {
            za.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f28275a.a("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                za.zzc("", e);
                return null;
            }
        } else {
            try {
                this.f28275a.a(new og(unifiedNativeAdMapper));
            } catch (RemoteException e2) {
                za.zzc("", e2);
            }
            return new pg(this.f28276b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.f28275a.a(adError.zzdr());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
