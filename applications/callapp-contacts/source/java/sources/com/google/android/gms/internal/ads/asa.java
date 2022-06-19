package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/asa.class */
public final class asa implements dsi<ars> {

    /* renamed from: a */
    private final dsv<arw> f43123a;

    /* renamed from: b */
    private final dsv<Set<ayi<art>>> f43124b;

    /* renamed from: c */
    private final dsv<Executor> f43125c;

    private asa(dsv<arw> dsvVar, dsv<Set<ayi<art>>> dsvVar2, dsv<Executor> dsvVar3) {
        this.f43123a = dsvVar;
        this.f43124b = dsvVar2;
        this.f43125c = dsvVar3;
    }

    /* renamed from: a */
    public static asa m18436a(dsv<arw> dsvVar, dsv<Set<ayi<art>>> dsvVar2, dsv<Executor> dsvVar3) {
        return new asa(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ars(this.f43123a.mo14005a(), this.f43124b.mo14005a(), this.f43125c.mo14005a());
    }
}
