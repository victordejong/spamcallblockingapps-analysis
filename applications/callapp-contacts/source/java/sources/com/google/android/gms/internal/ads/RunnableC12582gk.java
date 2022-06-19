package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
/* renamed from: com.google.android.gms.internal.ads.gk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gk.class */
final class RunnableC12582gk implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ PublisherAdView f49304a;

    /* renamed from: b */
    private final /* synthetic */ ekw f49305b;

    /* renamed from: c */
    private final /* synthetic */ BinderC12579gh f49306c;

    public RunnableC12582gk(BinderC12579gh binderC12579gh, PublisherAdView publisherAdView, ekw ekwVar) {
        this.f49306c = binderC12579gh;
        this.f49304a = publisherAdView;
        this.f49305b = ekwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener;
        if (!this.f49304a.zza(this.f49305b)) {
            C13088za.zzez("Could not bind.");
            return;
        }
        onPublisherAdViewLoadedListener = this.f49306c.f49301a;
        onPublisherAdViewLoadedListener.onPublisherAdViewLoaded(this.f49304a);
    }
}
