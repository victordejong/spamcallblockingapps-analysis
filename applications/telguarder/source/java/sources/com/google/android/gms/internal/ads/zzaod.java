package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaod.class */
final class zzaod implements InitializationCompleteCallback {
    private final /* synthetic */ zzajj zzdnu;

    public zzaod(zzaoa zzaoaVar, zzajj zzajjVar) {
        this.zzdnu = zzajjVar;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.zzdnu.onInitializationFailed(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.zzdnu.onInitializationSucceeded();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
