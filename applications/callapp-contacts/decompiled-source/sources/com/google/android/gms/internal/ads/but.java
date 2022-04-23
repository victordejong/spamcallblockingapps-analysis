package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/but.class */
public final class but implements dsi<bur> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25160a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zzbar> f25161b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bai> f25162c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<Executor> f25163d;

    public but(dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<bai> dsvVar3, dsv<Executor> dsvVar4) {
        this.f25160a = dsvVar;
        this.f25161b = dsvVar2;
        this.f25162c = dsvVar3;
        this.f25163d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bur(this.f25160a.a(), this.f25161b.a(), this.f25162c.a(), this.f25163d.a());
    }
}
