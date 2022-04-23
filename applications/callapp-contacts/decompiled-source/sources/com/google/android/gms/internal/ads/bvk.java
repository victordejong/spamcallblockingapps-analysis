package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvk.class */
public final class bvk implements dsi<bvh> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25199a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bbe> f25200b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f25201c;

    public bvk(dsv<Context> dsvVar, dsv<bbe> dsvVar2, dsv<Executor> dsvVar3) {
        this.f25199a = dsvVar;
        this.f25200b = dsvVar2;
        this.f25201c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bvh(this.f25199a.a(), this.f25200b.a(), this.f25201c.a());
    }
}
