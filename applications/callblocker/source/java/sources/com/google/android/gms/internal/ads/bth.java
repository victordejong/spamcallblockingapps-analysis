package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bth.class */
public final class bth implements bto<amh> {

    /* renamed from: a */
    private final /* synthetic */ bti f12228a;

    public bth(bti btiVar) {
        this.f12228a = btiVar;
    }

    @Override // com.google.android.gms.internal.ads.bto
    /* renamed from: a */
    public final void mo11377a() {
        synchronized (this.f12228a) {
            this.f12228a.f12232d = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.bto
    /* renamed from: a */
    public final /* synthetic */ void mo11376a(amh amhVar) {
        amh amhVar2 = amhVar;
        synchronized (this.f12228a) {
            this.f12228a.f12232d = false;
            this.f12228a.f12231c = amhVar2.m12946j();
            amhVar2.mo12299g_();
        }
    }
}
