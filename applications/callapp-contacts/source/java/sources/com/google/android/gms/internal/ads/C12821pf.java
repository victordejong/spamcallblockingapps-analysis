package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.pf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pf.class */
public final class C12821pf implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12800ol f49647a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12752ms f49648b;

    public C12821pf(BinderC12817pb binderC12817pb, AbstractC12800ol abstractC12800ol, AbstractC12752ms abstractC12752ms) {
        this.f49647a = abstractC12800ol;
        this.f49648b = abstractC12752ms;
    }

    /* renamed from: a */
    public final MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        if (unifiedNativeAdMapper != null) {
            try {
                this.f49647a.mo14297a(new BinderC12795og(unifiedNativeAdMapper));
            } catch (RemoteException e) {
                C13088za.zzc("", e);
            }
            return new C12822pg(this.f49648b);
        }
        C13088za.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.f49647a.mo14295a("Adapter returned null.");
            return null;
        } catch (RemoteException e2) {
            C13088za.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.f49647a.mo14296a(adError.zzdr());
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
