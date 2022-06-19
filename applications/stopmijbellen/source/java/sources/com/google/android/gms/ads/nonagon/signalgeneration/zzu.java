package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzfwm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzu.class */
final class zzu implements zzfwm<zzah> {
    public final /* synthetic */ zzv zza;

    public zzu(zzv zzvVar) {
        this.zza = zzvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzt.zzo().zzs(th, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        zzv.zzy(this.zza, "sgf", "sgf_reason", th.getMessage());
        zzciz.zzh("Failed to initialize webview for loading SDKCore. ", th);
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* synthetic */ void zzb(zzah zzahVar) {
        zzciz.zze("Initialized webview successfully for SDKCore.");
    }
}
