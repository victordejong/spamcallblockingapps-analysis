package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.im */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/im.class */
public final class C3224im implements AbstractC3662ys<AbstractC3200hp> {

    /* renamed from: a */
    private final /* synthetic */ C3232iu f16773a;

    /* renamed from: b */
    private final /* synthetic */ C3215id f16774b;

    public C3224im(C3215id c3215id, C3232iu c3232iu) {
        this.f16774b = c3215id;
        this.f16773a = c3232iu;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3662ys
    /* renamed from: a */
    public final /* synthetic */ void mo6728a(AbstractC3200hp abstractC3200hp) {
        Object obj;
        C3232iu c3232iu;
        C3232iu c3232iu2;
        C3232iu c3232iu3;
        obj = this.f16774b.f16746a;
        synchronized (obj) {
            this.f16774b.f16753h = 0;
            c3232iu = this.f16774b.f16752g;
            if (c3232iu != null) {
                C3232iu c3232iu4 = this.f16773a;
                c3232iu2 = this.f16774b.f16752g;
                if (c3232iu4 != c3232iu2) {
                    C3556uu.m7052a("New JS engine is loaded, marking previous one as destroyable.");
                    c3232iu3 = this.f16774b.f16752g;
                    c3232iu3.m7746c();
                }
            }
            this.f16774b.f16752g = this.f16773a;
        }
    }
}
