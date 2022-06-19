package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
/* renamed from: com.google.android.gms.internal.ads.gg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gg.class */
final class RunnableC12578gg implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AdManagerAdView f49298a;

    /* renamed from: b */
    private final /* synthetic */ ekw f49299b;

    /* renamed from: c */
    private final /* synthetic */ BinderC12575gd f49300c;

    public RunnableC12578gg(BinderC12575gd binderC12575gd, AdManagerAdView adManagerAdView, ekw ekwVar) {
        this.f49300c = binderC12575gd;
        this.f49298a = adManagerAdView;
        this.f49299b = ekwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener;
        if (!this.f49298a.zza(this.f49299b)) {
            C13088za.zzez("Could not bind.");
            return;
        }
        onAdManagerAdViewLoadedListener = this.f49300c.f49295a;
        onAdManagerAdViewLoadedListener.onAdManagerAdViewLoaded(this.f49298a);
    }
}
