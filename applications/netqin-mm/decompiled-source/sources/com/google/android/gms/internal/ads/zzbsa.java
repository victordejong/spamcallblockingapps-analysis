package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsa.class */
public final class zzbsa implements zzbuh, zzbuz, zzbvs, zzbws, zzux {

    /* renamed from: a */
    public final Clock f25430a;

    /* renamed from: b */
    public final zzaxw f25431b;

    public zzbsa(Clock clock, zzaxw zzaxwVar) {
        this.f25430a = clock;
        this.f25431b = zzaxwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: A */
    public final void mo13512A() {
        this.f25431b.m16204d();
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: H */
    public final void mo13511H() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    /* renamed from: M */
    public final void mo13728M() {
        this.f25431b.m16206b();
    }

    /* renamed from: a */
    public final String m15109a() {
        return this.f25431b.m16203e();
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14002a(zzatc zzatcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: a */
    public final void mo13508a(zzatw zzatwVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14001a(zzdog zzdogVar) {
        this.f25431b.m16210a(this.f25430a.mo17092a());
    }

    /* renamed from: a */
    public final void m15108a(zzvg zzvgVar) {
        this.f25431b.m16208a(zzvgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: k */
    public final void mo13497k() {
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void onAdClicked() {
        this.f25431b.m16205c();
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: t */
    public final void mo13496t() {
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        this.f25431b.m16207a(true);
    }
}
