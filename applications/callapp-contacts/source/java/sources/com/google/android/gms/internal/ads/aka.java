package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aka.class */
public final class aka implements dsi<eed> {

    /* renamed from: a */
    private final dsv<cov> f42279a;

    /* renamed from: b */
    private final dsv<zzbar> f42280b;

    /* renamed from: c */
    private final dsv<JSONObject> f42281c;

    /* renamed from: d */
    private final dsv<String> f42282d;

    private aka(dsv<cov> dsvVar, dsv<zzbar> dsvVar2, dsv<JSONObject> dsvVar3, dsv<String> dsvVar4) {
        this.f42279a = dsvVar;
        this.f42280b = dsvVar2;
        this.f42281c = dsvVar3;
        this.f42282d = dsvVar4;
    }

    /* renamed from: a */
    public static aka m18623a(dsv<cov> dsvVar, dsv<zzbar> dsvVar2, dsv<JSONObject> dsvVar3, dsv<String> dsvVar4) {
        return new aka(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        this.f42279a.mo14005a();
        zzbar mo14005a = this.f42280b.mo14005a();
        JSONObject mo14005a2 = this.f42281c.mo14005a();
        String mo14005a3 = this.f42282d.mo14005a();
        boolean equals = "native".equals(mo14005a3);
        zzr.zzkv();
        return (eed) dso.m15764b(new eed(zzj.zzzr(), mo14005a, mo14005a3, mo14005a2, false, equals));
    }
}
