package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bte.class */
public final class bte implements dsi<bta> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<akt> f25054a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25055b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f25056c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bif> f25057d;

    public bte(dsv<akt> dsvVar, dsv<Context> dsvVar2, dsv<Executor> dsvVar3, dsv<bif> dsvVar4) {
        this.f25054a = dsvVar;
        this.f25055b = dsvVar2;
        this.f25056c = dsvVar3;
        this.f25057d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bta(this.f25054a.a(), this.f25055b.a(), this.f25056c.a(), this.f25057d.a());
    }
}
