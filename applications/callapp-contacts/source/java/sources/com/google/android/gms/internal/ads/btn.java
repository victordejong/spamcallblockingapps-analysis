package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btn.class */
public final class btn implements dsi<btd> {

    /* renamed from: a */
    private final dsv<amn> f44709a;

    /* renamed from: b */
    private final dsv<Context> f44710b;

    /* renamed from: c */
    private final dsv<Executor> f44711c;

    /* renamed from: d */
    private final dsv<bif> f44712d;

    /* renamed from: e */
    private final dsv<cpo> f44713e;

    /* renamed from: f */
    private final dsv<cxu<cov, zzad>> f44714f;

    public btn(dsv<amn> dsvVar, dsv<Context> dsvVar2, dsv<Executor> dsvVar3, dsv<bif> dsvVar4, dsv<cpo> dsvVar5, dsv<cxu<cov, zzad>> dsvVar6) {
        this.f44709a = dsvVar;
        this.f44710b = dsvVar2;
        this.f44711c = dsvVar3;
        this.f44712d = dsvVar4;
        this.f44713e = dsvVar5;
        this.f44714f = dsvVar6;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new btd(this.f44709a.mo14005a(), this.f44710b.mo14005a(), this.f44711c.mo14005a(), this.f44712d.mo14005a(), this.f44713e.mo14005a(), this.f44714f.mo14005a());
    }
}
