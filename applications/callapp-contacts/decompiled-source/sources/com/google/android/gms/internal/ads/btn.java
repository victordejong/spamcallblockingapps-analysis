package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btn.class */
public final class btn implements dsi<btd> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<amn> f25070a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25071b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f25072c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bif> f25073d;
    private final dsv<cpo> e;
    private final dsv<cxu<cov, zzad>> f;

    public btn(dsv<amn> dsvVar, dsv<Context> dsvVar2, dsv<Executor> dsvVar3, dsv<bif> dsvVar4, dsv<cpo> dsvVar5, dsv<cxu<cov, zzad>> dsvVar6) {
        this.f25070a = dsvVar;
        this.f25071b = dsvVar2;
        this.f25072c = dsvVar3;
        this.f25073d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new btd(this.f25070a.a(), this.f25071b.a(), this.f25072c.a(), this.f25073d.a(), this.e.a(), this.f.a());
    }
}
