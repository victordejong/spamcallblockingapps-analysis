package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gg.class */
final class gg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ AdManagerAdView f28008a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ekw f28009b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ gd f28010c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gg(gd gdVar, AdManagerAdView adManagerAdView, ekw ekwVar) {
        this.f28010c = gdVar;
        this.f28008a = adManagerAdView;
        this.f28009b = ekwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener;
        if (this.f28008a.zza(this.f28009b)) {
            onAdManagerAdViewLoadedListener = this.f28010c.f28005a;
            onAdManagerAdViewLoadedListener.onAdManagerAdViewLoaded(this.f28008a);
            return;
        }
        za.zzez("Could not bind.");
    }
}
