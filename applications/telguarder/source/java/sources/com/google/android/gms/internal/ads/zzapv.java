package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapv.class */
final class zzapv implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {
    private final /* synthetic */ zzank zzdon;
    private final /* synthetic */ zzapd zzdos;
    private final /* synthetic */ zzapt zzdot;

    public zzapv(zzapt zzaptVar, zzapd zzapdVar, zzank zzankVar) {
        this.zzdot = zzaptVar;
        this.zzdos = zzapdVar;
        this.zzdon = zzankVar;
    }

    /* renamed from: zza */
    public final MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        if (mediationInterstitialAd != null) {
            try {
                this.zzdot.zzdop = mediationInterstitialAd;
                this.zzdos.zzvn();
            } catch (RemoteException e) {
                zzazk.zzc("", e);
            }
            return new zzapz(this.zzdon);
        }
        zzazk.zzex("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.zzdos.zzdl("Adapter returned null.");
            return null;
        } catch (RemoteException e2) {
            zzazk.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zzdos.zzg(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.zzdos.zzdl(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
