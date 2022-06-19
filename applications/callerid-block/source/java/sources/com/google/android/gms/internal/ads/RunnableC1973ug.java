package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C1398o;
/* renamed from: com.google.android.gms.internal.ads.ug */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ug.class */
final class RunnableC1973ug implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AdOverlayInfoParcel f8779b;

    /* renamed from: c */
    final /* synthetic */ zzasz f8780c;

    RunnableC1973ug(zzasz zzaszVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f8780c = zzaszVar;
        this.f8779b = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1407r.m8921c();
        C1398o.m8939a(zzasz.b(this.f8780c), this.f8779b, true);
    }
}
