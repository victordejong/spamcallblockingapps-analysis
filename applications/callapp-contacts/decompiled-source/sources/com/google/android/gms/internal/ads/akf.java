package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akf.class */
public final class akf implements dsi<Set<ayi<eeg>>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aju> f23480a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23481b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<JSONObject> f23482c;

    private akf(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        this.f23480a = dsvVar;
        this.f23481b = dsvVar2;
        this.f23482c = dsvVar3;
    }

    public static akf a(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        return new akf(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(this.f23482c.a() == null ? Collections.emptySet() : Collections.singleton(new ayi(this.f23480a.a(), this.f23481b.a())));
    }
}
