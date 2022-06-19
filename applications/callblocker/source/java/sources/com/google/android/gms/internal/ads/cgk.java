package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cgk.class */
final class cgk implements bto<bdr> {

    /* renamed from: a */
    private final /* synthetic */ cgl f12933a;

    public cgk(cgl cglVar) {
        this.f12933a = cglVar;
    }

    @Override // com.google.android.gms.internal.ads.bto
    /* renamed from: a */
    public final void mo11377a() {
        synchronized (this.f12933a) {
            this.f12933a.f12937d = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.bto
    /* renamed from: a */
    public final /* synthetic */ void mo11376a(bdr bdrVar) {
        bdr bdrVar2;
        bdr bdrVar3 = bdrVar;
        synchronized (this.f12933a) {
            this.f12933a.f12937d = bdrVar3;
            bdrVar2 = this.f12933a.f12937d;
            bdrVar2.mo12299g_();
        }
    }
}
