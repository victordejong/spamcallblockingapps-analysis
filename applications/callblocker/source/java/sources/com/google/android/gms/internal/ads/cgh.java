package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cgh.class */
public final class cgh implements bto<bdr> {

    /* renamed from: a */
    private final /* synthetic */ cgf f12932a;

    public cgh(cgf cgfVar) {
        this.f12932a = cgfVar;
    }

    @Override // com.google.android.gms.internal.ads.bto
    /* renamed from: a */
    public final void mo11377a() {
        synchronized (this.f12932a) {
            this.f12932a.f12926f = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.bto
    /* renamed from: a */
    public final /* synthetic */ void mo11376a(bdr bdrVar) {
        bdr bdrVar2;
        bdr bdrVar3 = bdrVar;
        synchronized (this.f12932a) {
            this.f12932a.f12926f = bdrVar3;
            bdrVar2 = this.f12932a.f12926f;
            bdrVar2.mo12299g_();
        }
    }
}
