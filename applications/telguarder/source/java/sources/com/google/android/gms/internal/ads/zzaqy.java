package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqy.class */
public final class zzaqy extends zzafw {
    private final /* synthetic */ zzaqw zzdqs;

    /* JADX INFO: Access modifiers changed from: private */
    public zzaqy(zzaqw zzaqwVar) {
        this.zzdqs = zzaqwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final void zza(zzafn zzafnVar, String str) {
        NativeCustomFormatAd.OnCustomClickListener onCustomClickListener;
        NativeCustomFormatAd.OnCustomClickListener onCustomClickListener2;
        NativeCustomFormatAd zzc;
        onCustomClickListener = this.zzdqs.zzdqo;
        if (onCustomClickListener == null) {
            return;
        }
        onCustomClickListener2 = this.zzdqs.zzdqo;
        zzc = this.zzdqs.zzc(zzafnVar);
        onCustomClickListener2.onCustomClick(zzc, str);
    }
}
