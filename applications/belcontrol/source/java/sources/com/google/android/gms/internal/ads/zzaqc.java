package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqc.class */
public final class zzaqc implements Runnable {
    private final /* synthetic */ AdOverlayInfoParcel zzdpa;
    private final /* synthetic */ zzaqa zzdpb;

    public zzaqc(zzaqa zzaqaVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzdpb = zzaqaVar;
        this.zzdpa = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzr.zzkq();
        zzm.zza(zzaqa.zzb(this.zzdpb), this.zzdpa, true);
    }
}
