package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC5653o;
import com.google.android.gms.ads.mediation.AbstractC5781n;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fa0.class */
final class fa0 implements AbstractC5653o {

    /* renamed from: d */
    final /* synthetic */ zzbye f22752d;

    public fa0(zzbye zzbyeVar) {
        this.f22752d = zzbyeVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a */
    public final void mo9244a() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a3 */
    public final void mo9243a3() {
        ei0.m15469a("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a6 */
    public final void mo9242a6(int i) {
        AbstractC5781n abstractC5781n;
        ei0.m15469a("AdMobCustomTabsAdapter overlay is closed.");
        abstractC5781n = this.f22752d.f33750b;
        abstractC5781n.mo10773p(this.f22752d);
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: e */
    public final void mo9240e() {
        ei0.m15469a("Delay close AdMobCustomTabsAdapter overlay.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: m2 */
    public final void mo9237m2() {
        ei0.m15469a("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: y4 */
    public final void mo9229y4() {
        AbstractC5781n abstractC5781n;
        ei0.m15469a("Opening AdMobCustomTabsAdapter overlay.");
        abstractC5781n = this.f22752d.f33750b;
        abstractC5781n.mo10770s(this.f22752d);
    }
}
