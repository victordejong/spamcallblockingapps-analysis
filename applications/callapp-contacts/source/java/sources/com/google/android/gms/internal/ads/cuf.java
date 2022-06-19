package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuf.class */
public final class cuf implements cty {

    /* renamed from: a */
    private final ctv f46557a;

    /* renamed from: b */
    private final cuj f46558b;

    /* renamed from: c */
    private final cuh f46559c;

    public cuf(ctv ctvVar, cuj cujVar, cuh cuhVar) {
        this.f46557a = ctvVar;
        this.f46558b = cujVar;
        this.f46559c = cuhVar;
    }

    @Override // com.google.android.gms.internal.ads.cty
    /* renamed from: a */
    public final void mo17215a(ctz ctzVar) {
        this.f46557a.mo17231a(mo17214b(ctzVar));
    }

    @Override // com.google.android.gms.internal.ads.cty
    /* renamed from: b */
    public final String mo17214b(ctz ctzVar) {
        cuj cujVar = this.f46558b;
        Map<String, String> m17230a = ctzVar.m17230a();
        this.f46559c.m17218a(m17230a);
        return cujVar.m17217a(m17230a);
    }
}
