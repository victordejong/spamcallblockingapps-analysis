package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akc.class */
public final class akc implements dsi<Set<ayi<asg>>> {

    /* renamed from: a */
    private final dsv<aju> f42286a;

    /* renamed from: b */
    private final dsv<Executor> f42287b;

    /* renamed from: c */
    private final dsv<JSONObject> f42288c;

    private akc(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        this.f42286a = dsvVar;
        this.f42287b = dsvVar2;
        this.f42288c = dsvVar3;
    }

    /* renamed from: a */
    public static akc m18621a(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        return new akc(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(this.f42288c.mo14005a() == null ? Collections.emptySet() : Collections.singleton(new ayi(this.f42286a.mo14005a(), this.f42287b.mo14005a())));
    }
}
