package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pa.class */
final class pa implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ of f28263a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ms f28264b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pa(pb pbVar, of ofVar, ms msVar) {
        this.f28263a = ofVar;
        this.f28264b = msVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        if (mediationBannerAd == null) {
            za.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f28263a.a("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                za.zzc("", e);
                return null;
            }
        } else {
            try {
                this.f28263a.a(d.a(mediationBannerAd.getView()));
            } catch (RemoteException e2) {
                za.zzc("", e2);
            }
            return new pg(this.f28264b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.f28263a.a(adError.zzdr());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
