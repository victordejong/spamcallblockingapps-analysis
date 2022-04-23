package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btr.class */
public final class btr implements dsi<btm> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25082a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<amn> f25083b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f25084c;

    public btr(dsv<Context> dsvVar, dsv<amn> dsvVar2, dsv<Executor> dsvVar3) {
        this.f25082a = dsvVar;
        this.f25083b = dsvVar2;
        this.f25084c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new btm(this.f25082a.a(), this.f25083b.a(), this.f25084c.a());
    }
}
