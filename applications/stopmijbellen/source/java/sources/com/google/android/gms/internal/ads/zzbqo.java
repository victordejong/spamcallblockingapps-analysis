package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqo.class */
final class zzbqo implements Runnable {
    public final /* synthetic */ AdManagerAdView zza;
    public final /* synthetic */ zzbhk zzb;
    public final /* synthetic */ zzbqp zzc;

    public zzbqo(zzbqp zzbqpVar, AdManagerAdView adManagerAdView, zzbhk zzbhkVar) {
        this.zzc = zzbqpVar;
        this.zza = adManagerAdView;
        this.zzb = zzbhkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener;
        if (!this.zza.zza(this.zzb)) {
            zzciz.zzj("Could not bind.");
            return;
        }
        onAdManagerAdViewLoadedListener = this.zzc.zza;
        onAdManagerAdViewLoadedListener.onAdManagerAdViewLoaded(this.zza);
    }
}
