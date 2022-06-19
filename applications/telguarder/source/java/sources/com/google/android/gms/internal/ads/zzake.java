package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.instream.InstreamAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzake.class */
public final class zzake extends zzaka {
    private final InstreamAd.InstreamAdLoadCallback zzdjc;

    public zzake(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        this.zzdjc = instreamAdLoadCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzakb
    public final void onInstreamAdFailedToLoad(int i) {
        this.zzdjc.onInstreamAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.zzakb
    public final void zza(zzajv zzajvVar) {
        this.zzdjc.onInstreamAdLoaded(new zzakc(zzajvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzakb
    public final void zze(zzvg zzvgVar) {
        this.zzdjc.onInstreamAdFailedToLoad(zzvgVar.zzqc());
    }
}
