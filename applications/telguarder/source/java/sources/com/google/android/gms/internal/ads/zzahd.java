package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAppInstallAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahd.class */
public final class zzahd extends zzafq {
    private final NativeAppInstallAd.OnAppInstallAdLoadedListener zzdgt;

    public zzahd(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.zzdgt = onAppInstallAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final void zza(zzaff zzaffVar) {
        this.zzdgt.onAppInstallAdLoaded(new zzafg(zzaffVar));
    }
}
