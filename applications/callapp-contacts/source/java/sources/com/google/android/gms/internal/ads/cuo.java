package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuo.class */
public final class cuo implements cty {

    /* renamed from: a */
    private final cuj f46574a;

    /* renamed from: b */
    private final cuh f46575b;

    public cuo(cuj cujVar, cuh cuhVar) {
        this.f46574a = cujVar;
        this.f46575b = cuhVar;
    }

    @Override // com.google.android.gms.internal.ads.cty
    /* renamed from: a */
    public final void mo17215a(ctz ctzVar) {
    }

    @Override // com.google.android.gms.internal.ads.cty
    /* renamed from: b */
    public final String mo17214b(ctz ctzVar) {
        cuj cujVar = this.f46574a;
        Map<String, String> m17230a = ctzVar.m17230a();
        this.f46575b.m17218a(m17230a);
        return cujVar.m17217a(m17230a);
    }
}
