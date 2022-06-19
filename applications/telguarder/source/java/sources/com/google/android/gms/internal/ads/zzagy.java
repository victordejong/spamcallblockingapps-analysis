package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagy.class */
public final class zzagy extends zzagb {
    private final /* synthetic */ zzagx zzdgn;

    /* JADX INFO: Access modifiers changed from: private */
    public zzagy(zzagx zzagxVar) {
        this.zzdgn = zzagxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zza(zzafn zzafnVar) {
        NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener;
        NativeCustomTemplateAd zzb;
        onCustomTemplateAdLoadedListener = this.zzdgn.zzdgk;
        zzb = this.zzdgn.zzb(zzafnVar);
        onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded(zzb);
    }
}
