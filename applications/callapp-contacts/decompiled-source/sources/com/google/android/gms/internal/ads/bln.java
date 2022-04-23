package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bln.class */
public final class bln extends blq {

    /* renamed from: c  reason: collision with root package name */
    private final cuh f24647c;

    public bln(Executor executor, zc zcVar, cuh cuhVar, cuj cujVar) {
        super(executor, zcVar, cujVar);
        this.f24647c = cuhVar;
        b();
    }

    public final Map<String, String> a() {
        return new HashMap(this.f24653a);
    }

    @Override // com.google.android.gms.internal.ads.blq
    protected final void b() {
        this.f24647c.a(this.f24653a);
    }
}
