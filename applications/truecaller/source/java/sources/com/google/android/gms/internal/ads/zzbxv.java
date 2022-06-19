package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxv.class */
public final class zzbxv implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {
    public final /* synthetic */ zzbxh zza;
    public final /* synthetic */ zzbvm zzb;

    public zzbxv(zzbxy zzbxyVar, zzbxh zzbxhVar, zzbvm zzbvmVar) {
        this.zza = zzbxhVar;
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
    public final /* bridge */ /* synthetic */ MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        UnifiedNativeAdMapper unifiedNativeAdMapper2 = unifiedNativeAdMapper;
        zzbxz zzbxzVar = null;
        if (unifiedNativeAdMapper2 == null) {
            zzcgt.zzi("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.zza.zzf("Adapter returned null.");
            } catch (RemoteException e) {
                zzcgt.zzg("", e);
            }
        } else {
            try {
                this.zza.zze(new zzbwy(unifiedNativeAdMapper2));
            } catch (RemoteException e2) {
                zzcgt.zzg("", e2);
            }
            zzbxzVar = new zzbxz(this.zzb);
        }
        return zzbxzVar;
    }
}
