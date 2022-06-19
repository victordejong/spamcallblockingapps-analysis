package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqa.class */
public final class bqa implements dsi<bpk> {

    /* renamed from: a */
    private final dsv<Context> f44456a;

    /* renamed from: b */
    private final dsv<Executor> f44457b;

    /* renamed from: c */
    private final dsv<AbstractC12931th> f44458c;

    /* renamed from: d */
    private final dsv<ait> f44459d;

    /* renamed from: e */
    private final dsv<AbstractC12932ti> f44460e;

    /* renamed from: f */
    private final dsv<HashMap<String, bpv>> f44461f;

    private bqa(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<AbstractC12931th> dsvVar3, dsv<ait> dsvVar4, dsv<AbstractC12932ti> dsvVar5, dsv<HashMap<String, bpv>> dsvVar6) {
        this.f44456a = dsvVar;
        this.f44457b = dsvVar2;
        this.f44458c = dsvVar3;
        this.f44459d = dsvVar4;
        this.f44460e = dsvVar5;
        this.f44461f = dsvVar6;
    }

    /* renamed from: a */
    public static bqa m17688a(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<AbstractC12931th> dsvVar3, dsv<ait> dsvVar4, dsv<AbstractC12932ti> dsvVar5, dsv<HashMap<String, bpv>> dsvVar6) {
        return new bqa(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bpk(this.f44456a.mo14005a(), this.f44457b.mo14005a(), this.f44458c.mo14005a(), this.f44459d.mo14005a(), this.f44460e.mo14005a(), this.f44461f.mo14005a());
    }
}
