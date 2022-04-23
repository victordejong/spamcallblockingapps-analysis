package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfm.class */
public final class cfm implements dsi<cfk> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25736a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25737b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Set<String>> f25738c;

    private cfm(dsv<dbs> dsvVar, dsv<Context> dsvVar2, dsv<Set<String>> dsvVar3) {
        this.f25736a = dsvVar;
        this.f25737b = dsvVar2;
        this.f25738c = dsvVar3;
    }

    public static cfm a(dsv<dbs> dsvVar, dsv<Context> dsvVar2, dsv<Set<String>> dsvVar3) {
        return new cfm(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cfk(this.f25736a.a(), this.f25737b.a(), this.f25738c.a());
    }
}
