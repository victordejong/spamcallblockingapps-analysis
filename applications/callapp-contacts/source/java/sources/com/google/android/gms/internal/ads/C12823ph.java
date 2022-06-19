package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
/* renamed from: com.google.android.gms.internal.ads.ph */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ph.class */
public final class C12823ph implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12805oq f49650a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12752ms f49651b;

    /* renamed from: c */
    private final /* synthetic */ BinderC12817pb f49652c;

    public C12823ph(BinderC12817pb binderC12817pb, AbstractC12805oq abstractC12805oq, AbstractC12752ms abstractC12752ms) {
        this.f49652c = binderC12817pb;
        this.f49650a = abstractC12805oq;
        this.f49651b = abstractC12752ms;
    }

    /* renamed from: a */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        if (mediationRewardedAd != null) {
            try {
                this.f49652c.f49639c = mediationRewardedAd;
                this.f49650a.mo14294a();
            } catch (RemoteException e) {
                C13088za.zzc("", e);
            }
            return new C12822pg(this.f49651b);
        }
        C13088za.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.f49650a.mo14292a("Adapter returned null.");
            return null;
        } catch (RemoteException e2) {
            C13088za.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.f49650a.mo14293a(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
