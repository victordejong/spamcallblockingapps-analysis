package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeContentAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahc.class */
public final class zzahc extends zzafv {
    private final NativeContentAd.OnContentAdLoadedListener zzdgs;

    public zzahc(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.zzdgs = onContentAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzafs
    public final void zza(zzafj zzafjVar) {
        this.zzdgs.onContentAdLoaded(new zzafk(zzafjVar));
    }
}
