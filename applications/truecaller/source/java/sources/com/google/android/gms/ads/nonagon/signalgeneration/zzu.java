package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzfrz;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzu.class */
public final class zzu implements zzfrz<zzah> {
    public final /* synthetic */ zzv zza;

    public zzu(zzv zzvVar) {
        this.zza = zzvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        zzt.zzg().zzk(th, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        zzv.zzy(this.zza, "sgf", "sgf_reason", th.getMessage());
        zzcgt.zzg("Failed to initialize webview for loading SDKCore. ", th);
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(zzah zzahVar) {
        zzcgt.zzd("Initialized webview successfully for SDKCore.");
    }
}
