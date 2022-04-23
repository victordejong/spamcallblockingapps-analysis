package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/alr.class */
public final class alr implements dsi<atx> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f23537a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<f> f23538b;

    public alr(dsv<ScheduledExecutorService> dsvVar, dsv<f> dsvVar2) {
        this.f23537a = dsvVar;
        this.f23538b = dsvVar2;
    }

    public static atx a(ScheduledExecutorService scheduledExecutorService, f fVar) {
        return (atx) dso.b(new atx(scheduledExecutorService, fVar));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f23537a.a(), this.f23538b.a());
    }
}
