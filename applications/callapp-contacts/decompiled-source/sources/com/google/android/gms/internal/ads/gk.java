package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gk.class */
final class gk implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ PublisherAdView f28014a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ekw f28015b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ gh f28016c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gk(gh ghVar, PublisherAdView publisherAdView, ekw ekwVar) {
        this.f28016c = ghVar;
        this.f28014a = publisherAdView;
        this.f28015b = ekwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener;
        if (this.f28014a.zza(this.f28015b)) {
            onPublisherAdViewLoadedListener = this.f28016c.f28011a;
            onPublisherAdViewLoadedListener.onPublisherAdViewLoaded(this.f28014a);
            return;
        }
        za.zzez("Could not bind.");
    }
}
