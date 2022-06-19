package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i52.class */
public final class i52 implements wa2 {

    /* renamed from: a */
    private final r03<String> f24151a;

    /* renamed from: b */
    private final Executor f24152b;

    public i52(r03<String> r03Var, Executor executor) {
        this.f24151a = r03Var;
        this.f24152b = executor;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03 zza() {
        return k03.m13995i(this.f24151a, g52.f23247a, this.f24152b);
    }
}
