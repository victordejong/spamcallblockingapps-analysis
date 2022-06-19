package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/but.class */
public final class but implements dsi<bur> {

    /* renamed from: a */
    private final dsv<Context> f44814a;

    /* renamed from: b */
    private final dsv<zzbar> f44815b;

    /* renamed from: c */
    private final dsv<bai> f44816c;

    /* renamed from: d */
    private final dsv<Executor> f44817d;

    public but(dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<bai> dsvVar3, dsv<Executor> dsvVar4) {
        this.f44814a = dsvVar;
        this.f44815b = dsvVar2;
        this.f44816c = dsvVar3;
        this.f44817d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bur(this.f44814a.mo14005a(), this.f44815b.mo14005a(), this.f44816c.mo14005a(), this.f44817d.mo14005a());
    }
}
