package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cnb.class */
public final class cnb implements dsi<cmr> {

    /* renamed from: a */
    private final dsv<Context> f46122a;

    /* renamed from: b */
    private final dsv<Executor> f46123b;

    /* renamed from: c */
    private final dsv<afq> f46124c;

    /* renamed from: d */
    private final dsv<bza> f46125d;

    /* renamed from: e */
    private final dsv<cnc> f46126e;

    /* renamed from: f */
    private final dsv<cpq> f46127f;

    public cnb(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<afq> dsvVar3, dsv<bza> dsvVar4, dsv<cnc> dsvVar5, dsv<cpq> dsvVar6) {
        this.f46122a = dsvVar;
        this.f46123b = dsvVar2;
        this.f46124c = dsvVar3;
        this.f46125d = dsvVar4;
        this.f46126e = dsvVar5;
        this.f46127f = dsvVar6;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cmr(this.f46122a.mo14005a(), this.f46123b.mo14005a(), this.f46124c.mo14005a(), this.f46125d.mo14005a(), this.f46126e.mo14005a(), this.f46127f.mo14005a());
    }
}
