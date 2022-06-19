package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.is */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/is.class */
public final class C3230is implements AbstractC3662ys<AbstractC3241jc> {

    /* renamed from: a */
    private final /* synthetic */ C3228iq f16783a;

    public C3230is(C3228iq c3228iq) {
        this.f16783a = c3228iq;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3662ys
    /* renamed from: a */
    public final /* synthetic */ void mo6728a(AbstractC3241jc abstractC3241jc) {
        C3232iu c3232iu;
        C3556uu.m7052a("Releasing engine reference.");
        c3232iu = this.f16783a.f16781b;
        c3232iu.m7747b();
    }
}
