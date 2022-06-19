package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbom.class */
public final class zzbom implements Runnable {
    public final /* synthetic */ AdManagerAdView zza;
    public final /* synthetic */ zzbfn zzb;
    public final /* synthetic */ zzbon zzc;

    public zzbom(zzbon zzbonVar, AdManagerAdView adManagerAdView, zzbfn zzbfnVar) {
        this.zzc = zzbonVar;
        this.zza = adManagerAdView;
        this.zzb = zzbfnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener;
        if (!this.zza.zza(this.zzb)) {
            zzcgt.zzi("Could not bind.");
            return;
        }
        onAdManagerAdViewLoadedListener = this.zzc.zza;
        onAdManagerAdViewLoadedListener.onAdManagerAdViewLoaded(this.zza);
    }
}
