package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pd.class */
final class pd implements MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ of f28272a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ms f28273b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pd(pb pbVar, of ofVar, ms msVar) {
        this.f28272a = ofVar;
        this.f28273b = msVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationBannerAdCallback onSuccess(MediationInterscrollerAd mediationInterscrollerAd) {
        if (mediationInterscrollerAd == null) {
            za.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f28272a.a("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                za.zzc("", e);
                return null;
            }
        } else {
            try {
                this.f28272a.a(new ns(mediationInterscrollerAd));
            } catch (RemoteException e2) {
                za.zzc("", e2);
            }
            return new pg(this.f28273b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.f28272a.a(adError.zzdr());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
