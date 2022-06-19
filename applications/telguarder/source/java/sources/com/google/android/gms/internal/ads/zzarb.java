package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzarb.class */
public final class zzarb extends zzagb {
    private final /* synthetic */ zzaqw zzdqs;

    /* JADX INFO: Access modifiers changed from: private */
    public zzarb(zzaqw zzaqwVar) {
        this.zzdqs = zzaqwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zza(zzafn zzafnVar) {
        NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener;
        NativeCustomFormatAd zzc;
        onCustomFormatAdLoadedListener = this.zzdqs.zzdqn;
        zzc = this.zzdqs.zzc(zzafnVar);
        onCustomFormatAdLoadedListener.onCustomFormatAdLoaded(zzc);
    }
}
