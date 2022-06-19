package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzv.class */
final class zzbzv implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {
    public final /* synthetic */ zzbzf zza;
    public final /* synthetic */ zzbxn zzb;
    public final /* synthetic */ zzbzz zzc;

    public zzbzv(zzbzz zzbzzVar, zzbzf zzbzfVar, zzbxn zzbxnVar) {
        this.zzc = zzbzzVar;
        this.zza = zzbzfVar;
        this.zzb = zzbxnVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zza.zzf(adError.zza());
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        MediationInterstitialAd mediationInterstitialAd2 = mediationInterstitialAd;
        zzcaa zzcaaVar = null;
        if (mediationInterstitialAd2 == null) {
            zzciz.zzj("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.zza.zze("Adapter returned null.");
            } catch (RemoteException e) {
                zzciz.zzh("", e);
            }
        } else {
            try {
                this.zzc.zzb = mediationInterstitialAd2;
                this.zza.zzg();
            } catch (RemoteException e2) {
                zzciz.zzh("", e2);
            }
            zzcaaVar = new zzcaa(this.zzb);
        }
        return zzcaaVar;
    }
}
