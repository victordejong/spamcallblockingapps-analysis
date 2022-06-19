package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C2327n;
/* renamed from: com.google.android.gms.internal.ads.ne */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ne.class */
final class RunnableC3351ne implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AdOverlayInfoParcel f16986a;

    /* renamed from: b */
    private final /* synthetic */ zzaol f16987b;

    public RunnableC3351ne(zzaol zzaolVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f16987b = zzaolVar;
        this.f16986a = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        C2341q.m14745b();
        activity = this.f16987b.f17731a;
        C2327n.m14751a(activity, this.f16986a, true);
    }
}
