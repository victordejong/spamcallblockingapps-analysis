package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfm.class */
public final class cfm implements dsi<cfk> {

    /* renamed from: a */
    private final dsv<dbs> f45671a;

    /* renamed from: b */
    private final dsv<Context> f45672b;

    /* renamed from: c */
    private final dsv<Set<String>> f45673c;

    private cfm(dsv<dbs> dsvVar, dsv<Context> dsvVar2, dsv<Set<String>> dsvVar3) {
        this.f45671a = dsvVar;
        this.f45672b = dsvVar2;
        this.f45673c = dsvVar3;
    }

    /* renamed from: a */
    public static cfm m17478a(dsv<dbs> dsvVar, dsv<Context> dsvVar2, dsv<Set<String>> dsvVar3) {
        return new cfm(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cfk(this.f45671a.mo14005a(), this.f45672b.mo14005a(), this.f45673c.mo14005a());
    }
}
