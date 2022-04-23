package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aka.class */
public final class aka implements dsi<eed> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cov> f23466a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zzbar> f23467b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<JSONObject> f23468c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<String> f23469d;

    private aka(dsv<cov> dsvVar, dsv<zzbar> dsvVar2, dsv<JSONObject> dsvVar3, dsv<String> dsvVar4) {
        this.f23466a = dsvVar;
        this.f23467b = dsvVar2;
        this.f23468c = dsvVar3;
        this.f23469d = dsvVar4;
    }

    public static aka a(dsv<cov> dsvVar, dsv<zzbar> dsvVar2, dsv<JSONObject> dsvVar3, dsv<String> dsvVar4) {
        return new aka(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        this.f23466a.a();
        zzbar a2 = this.f23467b.a();
        JSONObject a3 = this.f23468c.a();
        String a4 = this.f23469d.a();
        boolean equals = "native".equals(a4);
        zzr.zzkv();
        return (eed) dso.b(new eed(zzj.zzzr(), a2, a4, a3, false, equals));
    }
}
