package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akb.class */
public final class akb implements dsi<Set<ayi<ash>>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aju> f23470a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23471b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<JSONObject> f23472c;

    private akb(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        this.f23470a = dsvVar;
        this.f23471b = dsvVar2;
        this.f23472c = dsvVar3;
    }

    public static akb a(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        return new akb(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(this.f23472c.a() == null ? Collections.emptySet() : Collections.singleton(new ayi(this.f23470a.a(), this.f23471b.a())));
    }
}
