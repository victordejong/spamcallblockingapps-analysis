package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bub.class */
public final class bub implements dsi<btw> {

    /* renamed from: a */
    private final dsv<Context> f44748a;

    /* renamed from: b */
    private final dsv<Executor> f44749b;

    /* renamed from: c */
    private final dsv<bai> f44750c;

    /* renamed from: d */
    private final dsv<cot> f44751d;

    public bub(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<bai> dsvVar3, dsv<cot> dsvVar4) {
        this.f44748a = dsvVar;
        this.f44749b = dsvVar2;
        this.f44750c = dsvVar3;
        this.f44751d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new btw(this.f44748a.mo14005a(), this.f44749b.mo14005a(), this.f44750c.mo14005a(), this.f44751d.mo14005a());
    }
}
