package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.zzr;
/* renamed from: com.google.android.gms.internal.ads.pl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pl.class */
final class RunnableC12827pl implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AdOverlayInfoParcel f49661a;

    /* renamed from: b */
    private final /* synthetic */ zzaqt f49662b;

    public RunnableC12827pl(zzaqt zzaqtVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f49662b = zzaqtVar;
        this.f49661a = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        zzr.zzku();
        activity = this.f49662b.f50148a;
        zzo.zza(activity, this.f49661a, true);
    }
}
