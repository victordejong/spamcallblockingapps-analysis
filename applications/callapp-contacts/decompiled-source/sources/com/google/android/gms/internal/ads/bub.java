package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bub.class */
public final class bub implements dsi<btw> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25106a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f25107b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bai> f25108c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cot> f25109d;

    public bub(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<bai> dsvVar3, dsv<cot> dsvVar4) {
        this.f25106a = dsvVar;
        this.f25107b = dsvVar2;
        this.f25108c = dsvVar3;
        this.f25109d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new btw(this.f25106a.a(), this.f25107b.a(), this.f25108c.a(), this.f25109d.a());
    }
}
