package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C5651m;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ga0.class */
final class ga0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AdOverlayInfoParcel f23276d;

    /* renamed from: e */
    final /* synthetic */ zzbye f23277e;

    public ga0(zzbye zzbyeVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f23277e = zzbyeVar;
        this.f23276d = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        C5667s.m18161c();
        activity = this.f23277e.f33749a;
        C5651m.m18186a(activity, this.f23276d, true);
    }
}
