package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ayj.class */
public final class ayj implements dht<dtm> {

    /* renamed from: a */
    private final dig<C3647yd> f10594a;

    /* renamed from: b */
    private final dig<String> f10595b;

    public ayj(dig<C3647yd> digVar, dig<String> digVar2) {
        this.f10594a = digVar;
        this.f10595b = digVar2;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        C2341q.m14744c();
        return (dtm) dhz.m9438a(new dtm(C3567ve.m7011a(), this.f10594a.mo9430a(), this.f10595b.mo9430a(), new JSONObject(), false, true), "Cannot return null from a non-@Nullable @Provides method");
    }
}
