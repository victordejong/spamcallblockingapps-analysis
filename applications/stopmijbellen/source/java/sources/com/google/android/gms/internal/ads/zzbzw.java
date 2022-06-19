package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzw.class */
public final class zzbzw implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {
    public final /* synthetic */ zzbzi zza;
    public final /* synthetic */ zzbxn zzb;

    public zzbzw(zzbzz zzbzzVar, zzbzi zzbziVar, zzbxn zzbxnVar) {
        this.zza = zzbziVar;
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
    public final /* bridge */ /* synthetic */ MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        UnifiedNativeAdMapper unifiedNativeAdMapper2 = unifiedNativeAdMapper;
        zzcaa zzcaaVar = null;
        if (unifiedNativeAdMapper2 == null) {
            zzciz.zzj("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.zza.zze("Adapter returned null.");
            } catch (RemoteException e) {
                zzciz.zzh("", e);
            }
        } else {
            try {
                this.zza.zzg(new zzbyz(unifiedNativeAdMapper2));
            } catch (RemoteException e2) {
                zzciz.zzh("", e2);
            }
            zzcaaVar = new zzcaa(this.zzb);
        }
        return zzcaaVar;
    }
}
