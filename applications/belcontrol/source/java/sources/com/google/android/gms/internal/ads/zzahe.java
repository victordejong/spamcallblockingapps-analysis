package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.PublisherAdView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahe.class */
public final class zzahe implements Runnable {
    private final /* synthetic */ zzxl zzdgp;
    private final /* synthetic */ PublisherAdView zzdgu;
    private final /* synthetic */ zzahf zzdgv;

    public zzahe(zzahf zzahfVar, PublisherAdView publisherAdView, zzxl zzxlVar) {
        this.zzdgv = zzahfVar;
        this.zzdgu = publisherAdView;
        this.zzdgp = zzxlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzdgu.zza(this.zzdgp)) {
            zzahf.zza(this.zzdgv).onPublisherAdViewLoaded(this.zzdgu);
        } else {
            zzazk.zzex("Could not bind.");
        }
    }
}
