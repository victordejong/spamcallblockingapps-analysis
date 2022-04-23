package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqa.class */
public final class bqa implements dsi<bpk> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24864a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24865b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<th> f24866c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<ait> f24867d;
    private final dsv<ti> e;
    private final dsv<HashMap<String, bpv>> f;

    private bqa(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<th> dsvVar3, dsv<ait> dsvVar4, dsv<ti> dsvVar5, dsv<HashMap<String, bpv>> dsvVar6) {
        this.f24864a = dsvVar;
        this.f24865b = dsvVar2;
        this.f24866c = dsvVar3;
        this.f24867d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
    }

    public static bqa a(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<th> dsvVar3, dsv<ait> dsvVar4, dsv<ti> dsvVar5, dsv<HashMap<String, bpv>> dsvVar6) {
        return new bqa(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bpk(this.f24864a.a(), this.f24865b.a(), this.f24866c.a(), this.f24867d.a(), this.e.a(), this.f.a());
    }
}
