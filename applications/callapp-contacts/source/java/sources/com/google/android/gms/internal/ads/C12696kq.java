package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* renamed from: com.google.android.gms.internal.ads.kq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kq.class */
public final class C12696kq implements AbstractC13105zr {

    /* renamed from: a */
    private final /* synthetic */ C12705kz f49444a;

    /* renamed from: b */
    private final /* synthetic */ C12684ke f49445b;

    public C12696kq(C12684ke c12684ke, C12705kz c12705kz) {
        this.f49445b = c12684ke;
        this.f49444a = c12705kz;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13105zr
    /* renamed from: a */
    public final void mo13897a() {
        synchronized (this.f49445b.f49413a) {
            this.f49445b.f49419g = 1;
            zzd.zzed("Failed loading new engine. Marking new engine destroyable.");
            this.f49444a.m14550c();
        }
    }
}
