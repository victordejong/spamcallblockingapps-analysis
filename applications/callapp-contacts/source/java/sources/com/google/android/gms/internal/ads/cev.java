package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cev.class */
public final class cev implements dsi<C12268ces> {

    /* renamed from: a */
    private final dsv<dbs> f45641a;

    /* renamed from: b */
    private final dsv<ViewGroup> f45642b;

    /* renamed from: c */
    private final dsv<Context> f45643c;

    /* renamed from: d */
    private final dsv<Set<String>> f45644d;

    private cev(dsv<dbs> dsvVar, dsv<ViewGroup> dsvVar2, dsv<Context> dsvVar3, dsv<Set<String>> dsvVar4) {
        this.f45641a = dsvVar;
        this.f45642b = dsvVar2;
        this.f45643c = dsvVar3;
        this.f45644d = dsvVar4;
    }

    /* renamed from: a */
    public static cev m17483a(dsv<dbs> dsvVar, dsv<ViewGroup> dsvVar2, dsv<Context> dsvVar3, dsv<Set<String>> dsvVar4) {
        return new cev(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new C12268ces(this.f45641a.mo14005a(), this.f45642b.mo14005a(), this.f45643c.mo14005a(), this.f45644d.mo14005a());
    }
}
