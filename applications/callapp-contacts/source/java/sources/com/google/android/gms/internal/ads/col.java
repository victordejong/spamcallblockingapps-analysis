package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/col.class */
public final class col implements cal<bhu> {

    /* renamed from: a */
    private final /* synthetic */ coj f46198a;

    public col(coj cojVar) {
        this.f46198a = cojVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final void mo17373a() {
        synchronized (this.f46198a) {
            this.f46198a.f46189f = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final /* synthetic */ void mo17372a(bhu bhuVar) {
        bhu bhuVar2;
        bhu bhuVar3 = bhuVar;
        synchronized (this.f46198a) {
            this.f46198a.f46189f = bhuVar3;
            bhuVar2 = this.f46198a.f46189f;
            bhuVar2.mo18208h();
        }
    }
}
