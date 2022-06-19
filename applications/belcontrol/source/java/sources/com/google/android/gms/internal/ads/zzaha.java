package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaha.class */
public final class zzaha implements Runnable {
    private final /* synthetic */ AdManagerAdView zzdgo;
    private final /* synthetic */ zzxl zzdgp;
    private final /* synthetic */ zzahb zzdgq;

    public zzaha(zzahb zzahbVar, AdManagerAdView adManagerAdView, zzxl zzxlVar) {
        this.zzdgq = zzahbVar;
        this.zzdgo = adManagerAdView;
        this.zzdgp = zzxlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzdgo.zza(this.zzdgp)) {
            zzahb.zza(this.zzdgq).onAdManagerAdViewLoaded(this.zzdgo);
        } else {
            zzazk.zzex("Could not bind.");
        }
    }
}
