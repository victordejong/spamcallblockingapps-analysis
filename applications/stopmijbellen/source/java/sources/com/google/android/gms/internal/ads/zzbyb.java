package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyb.class */
final class zzbyb implements InitializationCompleteCallback {
    public final /* synthetic */ zzbtr zza;

    public zzbyb(zzbyg zzbygVar, zzbtr zzbtrVar) {
        this.zza = zzbtrVar;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.zza.zze(str);
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }
}
