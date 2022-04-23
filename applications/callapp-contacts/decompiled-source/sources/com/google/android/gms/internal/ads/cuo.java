package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuo.class */
public final class cuo implements cty {

    /* renamed from: a  reason: collision with root package name */
    private final cuj f26425a;

    /* renamed from: b  reason: collision with root package name */
    private final cuh f26426b;

    public cuo(cuj cujVar, cuh cuhVar) {
        this.f26425a = cujVar;
        this.f26426b = cuhVar;
    }

    @Override // com.google.android.gms.internal.ads.cty
    public final void a(ctz ctzVar) {
    }

    @Override // com.google.android.gms.internal.ads.cty
    public final String b(ctz ctzVar) {
        cuj cujVar = this.f26425a;
        Map<String, String> a2 = ctzVar.a();
        this.f26426b.a(a2);
        return cujVar.a(a2);
    }
}
