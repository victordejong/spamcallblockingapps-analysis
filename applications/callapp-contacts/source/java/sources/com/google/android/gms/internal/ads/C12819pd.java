package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
/* renamed from: com.google.android.gms.internal.ads.pd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pd.class */
final class C12819pd implements MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12794of f49644a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12752ms f49645b;

    public C12819pd(BinderC12817pb binderC12817pb, AbstractC12794of abstractC12794of, AbstractC12752ms abstractC12752ms) {
        this.f49644a = abstractC12794of;
        this.f49645b = abstractC12752ms;
    }

    /* renamed from: a */
    public final MediationBannerAdCallback onSuccess(MediationInterscrollerAd mediationInterscrollerAd) {
        if (mediationInterscrollerAd != null) {
            try {
                this.f49644a.mo14303a(new BinderC12780ns(mediationInterscrollerAd));
            } catch (RemoteException e) {
                C13088za.zzc("", e);
            }
            return new C12822pg(this.f49645b);
        }
        C13088za.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.f49644a.mo14301a("Adapter returned null.");
            return null;
        } catch (RemoteException e2) {
            C13088za.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.f49644a.mo14302a(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
