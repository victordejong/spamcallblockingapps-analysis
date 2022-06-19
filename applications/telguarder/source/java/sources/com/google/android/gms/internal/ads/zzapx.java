package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapx.class */
final class zzapx implements SignalCallbacks {
    private final /* synthetic */ zzapp zzdov;

    public zzapx(zzapt zzaptVar, zzapp zzappVar) {
        this.zzdov = zzappVar;
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(AdError adError) {
        try {
            this.zzdov.zzh(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(String str) {
        try {
            this.zzdov.onFailure(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String str) {
        try {
            this.zzdov.zzdn(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
