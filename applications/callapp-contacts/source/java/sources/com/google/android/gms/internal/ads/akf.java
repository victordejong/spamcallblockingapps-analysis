package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akf.class */
public final class akf implements dsi<Set<ayi<eeg>>> {

    /* renamed from: a */
    private final dsv<aju> f42293a;

    /* renamed from: b */
    private final dsv<Executor> f42294b;

    /* renamed from: c */
    private final dsv<JSONObject> f42295c;

    private akf(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        this.f42293a = dsvVar;
        this.f42294b = dsvVar2;
        this.f42295c = dsvVar3;
    }

    /* renamed from: a */
    public static akf m18618a(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        return new akf(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(this.f42295c.mo14005a() == null ? Collections.emptySet() : Collections.singleton(new ayi(this.f42293a.mo14005a(), this.f42294b.mo14005a())));
    }
}
