package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapu.class */
final class zzapu implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {
    private final /* synthetic */ zzank zzdon;
    private final /* synthetic */ zzape zzdor;

    public zzapu(zzapt zzaptVar, zzape zzapeVar, zzank zzankVar) {
        this.zzdor = zzapeVar;
        this.zzdon = zzankVar;
    }

    /* renamed from: zza */
    public final MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        if (unifiedNativeAdMapper != null) {
            try {
                this.zzdor.zza(new zzaoz(unifiedNativeAdMapper));
            } catch (RemoteException e) {
                zzazk.zzc("", e);
            }
            return new zzapz(this.zzdon);
        }
        zzazk.zzex("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.zzdor.zzdl("Adapter returned null.");
            return null;
        } catch (RemoteException e2) {
            zzazk.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zzdor.zzg(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.zzdor.zzdl(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
