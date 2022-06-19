package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bln.class */
public final class bln extends blq {

    /* renamed from: c */
    private final cuh f44205c;

    public bln(Executor executor, C13090zc c13090zc, cuh cuhVar, cuj cujVar) {
        super(executor, c13090zc, cujVar);
        this.f44205c = cuhVar;
        mo17760b();
    }

    /* renamed from: a */
    public final Map<String, String> m17763a() {
        return new HashMap(this.f44211a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.blq
    /* renamed from: b */
    public final void mo17760b() {
        this.f44205c.m17218a(this.f44211a);
    }
}
