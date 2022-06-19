package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqc.class */
final class zzaqc implements Runnable {
    private final /* synthetic */ AdOverlayInfoParcel zzdpa;
    private final /* synthetic */ zzaqa zzdpb;

    public zzaqc(zzaqa zzaqaVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzdpb = zzaqaVar;
        this.zzdpa = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        zzr.zzkq();
        activity = this.zzdpb.zzdoy;
        zzm.zza(activity, this.zzdpa, true);
    }
}
