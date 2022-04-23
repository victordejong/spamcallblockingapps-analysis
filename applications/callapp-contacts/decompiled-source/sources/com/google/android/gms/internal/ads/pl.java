package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pl.class */
final class pl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ AdOverlayInfoParcel f28286a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zzaqt f28287b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pl(zzaqt zzaqtVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f28287b = zzaqtVar;
        this.f28286a = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        zzr.zzku();
        activity = this.f28287b.f28600a;
        zzo.zza(activity, this.f28286a, true);
    }
}
