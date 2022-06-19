package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaps.class */
final class zzaps implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {
    private final /* synthetic */ zzaoy zzdom;
    private final /* synthetic */ zzank zzdon;

    public zzaps(zzapt zzaptVar, zzaoy zzaoyVar, zzank zzankVar) {
        this.zzdom = zzaoyVar;
        this.zzdon = zzankVar;
    }

    /* renamed from: zza */
    public final MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        if (mediationBannerAd != null) {
            try {
                this.zzdom.zzx(ObjectWrapper.wrap(mediationBannerAd.getView()));
            } catch (RemoteException e) {
                zzazk.zzc("", e);
            }
            return new zzapz(this.zzdon);
        }
        zzazk.zzex("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.zzdom.zzdl("Adapter returned null.");
            return null;
        } catch (RemoteException e2) {
            zzazk.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zzdom.zzg(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.zzdom.zzdl(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
