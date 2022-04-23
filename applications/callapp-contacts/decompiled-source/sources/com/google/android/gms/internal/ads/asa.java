package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/asa.class */
public final class asa implements dsi<ars> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<arw> f23837a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Set<ayi<art>>> f23838b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f23839c;

    private asa(dsv<arw> dsvVar, dsv<Set<ayi<art>>> dsvVar2, dsv<Executor> dsvVar3) {
        this.f23837a = dsvVar;
        this.f23838b = dsvVar2;
        this.f23839c = dsvVar3;
    }

    public static asa a(dsv<arw> dsvVar, dsv<Set<ayi<art>>> dsvVar2, dsv<Executor> dsvVar3) {
        return new asa(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ars(this.f23837a.a(), this.f23838b.a(), this.f23839c.a());
    }
}
