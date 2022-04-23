package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxg.class */
public final class bxg implements dsi<bwz> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25329a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f25330b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bhx> f25331c;

    public bxg(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<bhx> dsvVar3) {
        this.f25329a = dsvVar;
        this.f25330b = dsvVar2;
        this.f25331c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bwz(this.f25329a.a(), this.f25330b.a(), this.f25331c.a());
    }
}
