package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cnb.class */
public final class cnb implements dsi<cmr> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f26103a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f26104b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<afq> f26105c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bza> f26106d;
    private final dsv<cnc> e;
    private final dsv<cpq> f;

    public cnb(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<afq> dsvVar3, dsv<bza> dsvVar4, dsv<cnc> dsvVar5, dsv<cpq> dsvVar6) {
        this.f26103a = dsvVar;
        this.f26104b = dsvVar2;
        this.f26105c = dsvVar3;
        this.f26106d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cmr(this.f26103a.a(), this.f26104b.a(), this.f26105c.a(), this.f26106d.a(), this.e.a(), this.f.a());
    }
}
