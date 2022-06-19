package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
import com.google.android.gms.ads.mediation.AbstractC2368l;
/* renamed from: com.google.android.gms.internal.ads.nc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nc.class */
final class C3349nc implements AbstractC2328o {

    /* renamed from: a */
    private final /* synthetic */ zzaol f16978a;

    public C3349nc(zzaol zzaolVar) {
        this.f16978a = zzaolVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: c */
    public final void mo7433c() {
        C3645yb.m6751b("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: d */
    public final void mo7432d() {
        AbstractC2368l abstractC2368l;
        C3645yb.m6751b("Opening AdMobCustomTabsAdapter overlay.");
        abstractC2368l = this.f16978a.f17732b;
        abstractC2368l.mo7624b(this.f16978a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: f_ */
    public final void mo7431f_() {
        C3645yb.m6751b("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: h_ */
    public final void mo7430h_() {
        AbstractC2368l abstractC2368l;
        C3645yb.m6751b("AdMobCustomTabsAdapter overlay is closed.");
        abstractC2368l = this.f16978a.f17732b;
        abstractC2368l.mo7620c(this.f16978a);
    }
}
