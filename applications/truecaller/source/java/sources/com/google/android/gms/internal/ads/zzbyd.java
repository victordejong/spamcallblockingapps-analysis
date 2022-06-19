package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyd.class */
public final class zzbyd implements Runnable {
    public final /* synthetic */ AdOverlayInfoParcel zza;
    public final /* synthetic */ zzbye zzb;

    public zzbyd(zzbye zzbyeVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzb = zzbyeVar;
        this.zza = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        zzt.zzb();
        activity = this.zzb.zza;
        zzm.zza(activity, this.zza, true);
    }
}
