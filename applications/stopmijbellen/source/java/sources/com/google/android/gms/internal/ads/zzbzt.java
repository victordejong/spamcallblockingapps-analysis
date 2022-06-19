package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzt.class */
final class zzbzt implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {
    public final /* synthetic */ zzbzc zza;
    public final /* synthetic */ zzbxn zzb;

    public zzbzt(zzbzz zzbzzVar, zzbzc zzbzcVar, zzbxn zzbxnVar) {
        this.zza = zzbzcVar;
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
    public final /* bridge */ /* synthetic */ MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        MediationBannerAd mediationBannerAd2 = mediationBannerAd;
        zzcaa zzcaaVar = null;
        if (mediationBannerAd2 == null) {
            zzciz.zzj("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.zza.zze("Adapter returned null.");
            } catch (RemoteException e) {
                zzciz.zzh("", e);
            }
        } else {
            try {
                this.zza.zzg(ObjectWrapper.wrap(mediationBannerAd2.getView()));
            } catch (RemoteException e2) {
                zzciz.zzh("", e2);
            }
            zzcaaVar = new zzcaa(this.zzb);
        }
        return zzcaaVar;
    }
}
