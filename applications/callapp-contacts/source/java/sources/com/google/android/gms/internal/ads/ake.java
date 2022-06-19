package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ake.class */
public final class ake implements dsi<Set<ayi<zzp>>> {

    /* renamed from: a */
    private final dsv<aju> f42290a;

    /* renamed from: b */
    private final dsv<Executor> f42291b;

    /* renamed from: c */
    private final dsv<JSONObject> f42292c;

    private ake(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        this.f42290a = dsvVar;
        this.f42291b = dsvVar2;
        this.f42292c = dsvVar3;
    }

    /* renamed from: a */
    public static ake m18619a(dsv<aju> dsvVar, dsv<Executor> dsvVar2, dsv<JSONObject> dsvVar3) {
        return new ake(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(this.f42292c.mo14005a() == null ? Collections.emptySet() : Collections.singleton(new ayi(this.f42290a.mo14005a(), this.f42291b.mo14005a())));
    }
}
