package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akc.class */
public final class akc implements dsi<Set<ayi<asg>>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aju> f23473a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23474b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<JSONObject> f23475c;

    private akc(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        this.f23473a = dsvVar;
        this.f23474b = dsvVar2;
        this.f23475c = dsvVar3;
    }

    public static akc a(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        return new akc(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(this.f23475c.a() == null ? Collections.emptySet() : Collections.singleton(new ayi(this.f23473a.a(), this.f23474b.a())));
    }
}
