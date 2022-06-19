package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxt.class */
public final class zzbxt implements MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> {
    public final /* synthetic */ zzbxb zza;
    public final /* synthetic */ zzbvm zzb;

    public zzbxt(zzbxy zzbxyVar, zzbxb zzbxbVar, zzbvm zzbvmVar) {
        this.zza = zzbxbVar;
        this.zzb = zzbvmVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zza.zzg(adError.zza());
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ MediationBannerAdCallback onSuccess(MediationInterscrollerAd mediationInterscrollerAd) {
        MediationInterscrollerAd mediationInterscrollerAd2 = mediationInterscrollerAd;
        zzbxz zzbxzVar = null;
        if (mediationInterscrollerAd2 == null) {
            zzcgt.zzi("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.zza.zzf("Adapter returned null.");
            } catch (RemoteException e) {
                zzcgt.zzg("", e);
            }
        } else {
            try {
                this.zza.zzh(new zzbwg(mediationInterscrollerAd2));
            } catch (RemoteException e2) {
                zzcgt.zzg("", e2);
            }
            zzbxzVar = new zzbxz(this.zzb);
        }
        return zzbxzVar;
    }
}
