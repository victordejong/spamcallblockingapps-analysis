package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bls.class */
public final class bls implements dsi<bln> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f24661a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zc> f24662b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cuh> f24663c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cuj> f24664d;

    public bls(dsv<Executor> dsvVar, dsv<zc> dsvVar2, dsv<cuh> dsvVar3, dsv<cuj> dsvVar4) {
        this.f24661a = dsvVar;
        this.f24662b = dsvVar2;
        this.f24663c = dsvVar3;
        this.f24664d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bln(this.f24661a.a(), this.f24662b.a(), this.f24663c.a(), this.f24664d.a());
    }
}
