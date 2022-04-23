package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ake.class */
public final class ake implements dsi<Set<ayi<zzp>>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aju> f23477a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23478b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<JSONObject> f23479c;

    private ake(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        this.f23477a = dsvVar;
        this.f23478b = dsvVar2;
        this.f23479c = dsvVar3;
    }

    public static ake a(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        return new ake(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(this.f23479c.a() == null ? Collections.emptySet() : Collections.singleton(new ayi(this.f23477a.a(), this.f23478b.a())));
    }
}
