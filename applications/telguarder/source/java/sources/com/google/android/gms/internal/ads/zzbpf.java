package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpf.class */
public final class zzbpf implements zzbrm, zzbse, zzbtb, zzbua, zzvc {
    private final Clock zzbqg;
    private final zzayn zzfxn;

    public zzbpf(Clock clock, zzayn zzaynVar) {
        this.zzbqg = clock;
        this.zzfxn = zzaynVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        this.zzfxn.zzxj();
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        this.zzfxn.zzxk();
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        this.zzfxn.zzxi();
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        this.zzfxn.zzao(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzb(zzauk zzaukVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnlVar) {
        this.zzfxn.zzey(this.zzbqg.elapsedRealtime());
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatqVar) {
    }

    public final void zzf(zzvl zzvlVar) {
        this.zzfxn.zze(zzvlVar);
    }

    public final String zzxl() {
        return this.zzfxn.zzxl();
    }
}
