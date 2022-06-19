package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcae.class */
final class zzcae implements Runnable {
    public final /* synthetic */ AdOverlayInfoParcel zza;
    public final /* synthetic */ zzcaf zzb;

    public zzcae(zzcaf zzcafVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzb = zzcafVar;
        this.zza = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        zzt.zzj();
        activity = this.zzb.zza;
        zzm.zza(activity, this.zza, true);
    }
}
