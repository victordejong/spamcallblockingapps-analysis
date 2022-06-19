package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqq.class */
public final class cqq implements dsi<Context> {

    /* renamed from: a */
    private final cqo f46389a;

    /* renamed from: b */
    private final dsv<Context> f46390b;

    private cqq(cqo cqoVar, dsv<Context> dsvVar) {
        this.f46389a = cqoVar;
        this.f46390b = dsvVar;
    }

    /* renamed from: a */
    public static cqq m17316a(cqo cqoVar, dsv<Context> dsvVar) {
        return new cqq(cqoVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Context) dso.m15764b(this.f46390b.mo14005a());
    }
}
