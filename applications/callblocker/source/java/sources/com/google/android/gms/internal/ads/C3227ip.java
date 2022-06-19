package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ip */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ip.class */
public final class C3227ip implements AbstractC3660yq {

    /* renamed from: a */
    private final /* synthetic */ C3232iu f16778a;

    /* renamed from: b */
    private final /* synthetic */ C3215id f16779b;

    public C3227ip(C3215id c3215id, C3232iu c3232iu) {
        this.f16779b = c3215id;
        this.f16778a = c3232iu;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3660yq
    /* renamed from: a */
    public final void mo6727a() {
        Object obj;
        obj = this.f16779b.f16746a;
        synchronized (obj) {
            this.f16779b.f16753h = 1;
            C3556uu.m7052a("Failed loading new engine. Marking new engine destroyable.");
            this.f16778a.m7746c();
        }
    }
}
