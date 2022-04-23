package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwg.class */
public final class bwg implements dsi<bwe> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25267a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f25268b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bhx> f25269c;

    public bwg(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<bhx> dsvVar3) {
        this.f25267a = dsvVar;
        this.f25268b = dsvVar2;
        this.f25269c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bwe(this.f25267a.a(), this.f25268b.a(), this.f25269c.a());
    }
}
