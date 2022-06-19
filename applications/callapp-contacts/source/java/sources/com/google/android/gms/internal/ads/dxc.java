package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxc.class */
public final class dxc implements dwx {

    /* renamed from: a */
    private final /* synthetic */ dxa f47911a;

    /* JADX INFO: Access modifiers changed from: private */
    public dxc(dxa dxaVar) {
        this.f47911a = dxaVar;
    }

    @Override // com.google.android.gms.internal.ads.dwx
    /* renamed from: a */
    public final void mo15534a() {
        dxa.m15537w();
        this.f47911a.f47907j = true;
    }

    @Override // com.google.android.gms.internal.ads.dwx
    /* renamed from: a */
    public final void mo15533a(int i) {
        dwk dwkVar;
        dwkVar = this.f47911a.f47899b;
        if (dwkVar.f47797b != null) {
            dwkVar.f47796a.post(new dwq(dwkVar, i));
        }
        dxa.m15538v();
    }

    @Override // com.google.android.gms.internal.ads.dwx
    /* renamed from: a */
    public final void mo15532a(int i, long j, long j2) {
        dwk dwkVar;
        dwkVar = this.f47911a.f47899b;
        if (dwkVar.f47797b != null) {
            dwkVar.f47796a.post(new dwo(dwkVar, i, j, j2));
        }
        dxa.m15536x();
    }
}
