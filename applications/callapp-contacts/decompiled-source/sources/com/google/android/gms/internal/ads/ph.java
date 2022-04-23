package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ph.class */
public final class ph implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ oq f28278a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ms f28279b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ pb f28280c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ph(pb pbVar, oq oqVar, ms msVar) {
        this.f28280c = pbVar;
        this.f28278a = oqVar;
        this.f28279b = msVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        if (mediationRewardedAd == null) {
            za.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f28278a.a("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                za.zzc("", e);
                return null;
            }
        } else {
            try {
                this.f28280c.f28267c = mediationRewardedAd;
                this.f28278a.a();
            } catch (RemoteException e2) {
                za.zzc("", e2);
            }
            return new pg(this.f28279b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.f28278a.a(adError.zzdr());
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
