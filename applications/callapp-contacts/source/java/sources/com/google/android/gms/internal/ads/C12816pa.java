package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.pa */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pa.class */
final class C12816pa implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12794of f49635a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12752ms f49636b;

    public C12816pa(BinderC12817pb binderC12817pb, AbstractC12794of abstractC12794of, AbstractC12752ms abstractC12752ms) {
        this.f49635a = abstractC12794of;
        this.f49636b = abstractC12752ms;
    }

    /* renamed from: a */
    public final MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        if (mediationBannerAd != null) {
            try {
                this.f49635a.mo14304a(BinderC12129d.m18979a(mediationBannerAd.getView()));
            } catch (RemoteException e) {
                C13088za.zzc("", e);
            }
            return new C12822pg(this.f49636b);
        }
        C13088za.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.f49635a.mo14301a("Adapter returned null.");
            return null;
        } catch (RemoteException e2) {
            C13088za.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.f49635a.mo14302a(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
