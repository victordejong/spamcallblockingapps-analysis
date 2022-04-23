package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pc.class */
final class pc implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ok f28269a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ms f28270b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ pb f28271c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pc(pb pbVar, ok okVar, ms msVar) {
        this.f28271c = pbVar;
        this.f28269a = okVar;
        this.f28270b = msVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        if (mediationInterstitialAd == null) {
            za.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f28269a.a("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                za.zzc("", e);
                return null;
            }
        } else {
            try {
                this.f28271c.f28266b = mediationInterstitialAd;
                this.f28269a.a();
            } catch (RemoteException e2) {
                za.zzc("", e2);
            }
            return new pg(this.f28270b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.f28269a.a(adError.zzdr());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
