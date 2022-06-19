package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajh.class */
public final class ajh implements dht<dtm> {

    /* renamed from: a */
    private final dig<cgr> f9812a;

    /* renamed from: b */
    private final dig<C3647yd> f9813b;

    /* renamed from: c */
    private final dig<JSONObject> f9814c;

    /* renamed from: d */
    private final dig<String> f9815d;

    private ajh(dig<cgr> digVar, dig<C3647yd> digVar2, dig<JSONObject> digVar3, dig<String> digVar4) {
        this.f9812a = digVar;
        this.f9813b = digVar2;
        this.f9814c = digVar3;
        this.f9815d = digVar4;
    }

    /* renamed from: a */
    public static ajh m13073a(dig<cgr> digVar, dig<C3647yd> digVar2, dig<JSONObject> digVar3, dig<String> digVar4) {
        return new ajh(digVar, digVar2, digVar3, digVar4);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        this.f9812a.mo9430a();
        C3647yd mo9430a = this.f9813b.mo9430a();
        JSONObject mo9430a2 = this.f9814c.mo9430a();
        String mo9430a3 = this.f9815d.mo9430a();
        boolean equals = "native".equals(mo9430a3);
        C2341q.m14744c();
        return (dtm) dhz.m9438a(new dtm(C3567ve.m7011a(), mo9430a, mo9430a3, mo9430a2, false, equals), "Cannot return null from a non-@Nullable @Provides method");
    }
}
