package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqq.class */
public final class cqq implements dsi<Context> {

    /* renamed from: a  reason: collision with root package name */
    private final cqo f26267a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f26268b;

    private cqq(cqo cqoVar, dsv<Context> dsvVar) {
        this.f26267a = cqoVar;
        this.f26268b = dsvVar;
    }

    public static cqq a(cqo cqoVar, dsv<Context> dsvVar) {
        return new cqq(cqoVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Context) dso.b(this.f26268b.a());
    }
}
