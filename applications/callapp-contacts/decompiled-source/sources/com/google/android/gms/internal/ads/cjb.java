package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjb.class */
public final class cjb implements dsi<ciz> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<rh> f25928a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f25929b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Context> f25930c;

    public cjb(dsv<rh> dsvVar, dsv<ScheduledExecutorService> dsvVar2, dsv<Context> dsvVar3) {
        this.f25928a = dsvVar;
        this.f25929b = dsvVar2;
        this.f25930c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ciz(this.f25928a.a(), this.f25929b.a(), this.f25930c.a());
    }
}
