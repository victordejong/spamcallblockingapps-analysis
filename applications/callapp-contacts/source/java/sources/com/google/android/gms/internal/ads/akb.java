package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akb.class */
public final class akb implements dsi<Set<ayi<ash>>> {

    /* renamed from: a */
    private final dsv<aju> f42283a;

    /* renamed from: b */
    private final dsv<Executor> f42284b;

    /* renamed from: c */
    private final dsv<JSONObject> f42285c;

    private akb(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        this.f42283a = dsvVar;
        this.f42284b = dsvVar2;
        this.f42285c = dsvVar3;
    }

    /* renamed from: a */
    public static akb m18622a(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        return new akb(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(this.f42285c.mo14005a() == null ? Collections.emptySet() : Collections.singleton(new ayi(this.f42283a.mo14005a(), this.f42284b.mo14005a())));
    }
}
