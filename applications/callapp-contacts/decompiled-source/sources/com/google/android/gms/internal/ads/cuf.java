package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuf.class */
public final class cuf implements cty {

    /* renamed from: a  reason: collision with root package name */
    private final ctv f26408a;

    /* renamed from: b  reason: collision with root package name */
    private final cuj f26409b;

    /* renamed from: c  reason: collision with root package name */
    private final cuh f26410c;

    public cuf(ctv ctvVar, cuj cujVar, cuh cuhVar) {
        this.f26408a = ctvVar;
        this.f26409b = cujVar;
        this.f26410c = cuhVar;
    }

    @Override // com.google.android.gms.internal.ads.cty
    public final void a(ctz ctzVar) {
        this.f26408a.a(b(ctzVar));
    }

    @Override // com.google.android.gms.internal.ads.cty
    public final String b(ctz ctzVar) {
        cuj cujVar = this.f26409b;
        Map<String, String> a2 = ctzVar.a();
        this.f26410c.a(a2);
        return cujVar.a(a2);
    }
}
