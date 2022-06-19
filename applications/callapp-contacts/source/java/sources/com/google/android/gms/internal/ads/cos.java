package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cos.class */
final class cos implements cal<bhu> {

    /* renamed from: a */
    private final /* synthetic */ cop f46213a;

    public cos(cop copVar) {
        this.f46213a = copVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final void mo17373a() {
        synchronized (this.f46213a) {
            this.f46213a.f46209d = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final /* synthetic */ void mo17372a(bhu bhuVar) {
        bhu bhuVar2;
        bhu bhuVar3 = bhuVar;
        synchronized (this.f46213a) {
            this.f46213a.f46209d = bhuVar3;
            bhuVar2 = this.f46213a.f46209d;
            bhuVar2.mo18208h();
        }
    }
}
