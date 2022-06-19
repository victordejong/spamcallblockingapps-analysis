package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
/* renamed from: com.google.android.gms.internal.ads.pc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pc.class */
final class C12818pc implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12799ok f49641a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12752ms f49642b;

    /* renamed from: c */
    private final /* synthetic */ BinderC12817pb f49643c;

    public C12818pc(BinderC12817pb binderC12817pb, AbstractC12799ok abstractC12799ok, AbstractC12752ms abstractC12752ms) {
        this.f49643c = binderC12817pb;
        this.f49641a = abstractC12799ok;
        this.f49642b = abstractC12752ms;
    }

    /* renamed from: a */
    public final MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        if (mediationInterstitialAd != null) {
            try {
                this.f49643c.f49638b = mediationInterstitialAd;
                this.f49641a.mo14300a();
            } catch (RemoteException e) {
                C13088za.zzc("", e);
            }
            return new C12822pg(this.f49642b);
        }
        C13088za.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.f49641a.mo14298a("Adapter returned null.");
            return null;
        } catch (RemoteException e2) {
            C13088za.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.f49641a.mo14299a(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
