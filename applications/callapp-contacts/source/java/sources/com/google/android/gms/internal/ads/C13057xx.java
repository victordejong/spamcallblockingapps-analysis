package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* renamed from: com.google.android.gms.internal.ads.xx */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xx.class */
public final class C13057xx implements AbstractC13059xz {
    @Override // com.google.android.gms.internal.ads.AbstractC13059xz
    /* renamed from: a */
    public final dbt<String> mo13987a() {
        return dbh.m16899a((Object) null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13059xz
    /* renamed from: a */
    public final dbt<AdvertisingIdClient.Info> mo13986a(Context context) {
        C13103zp c13103zp = new C13103zp();
        ekb.m14835a();
        if (C13077yq.m13932c(context)) {
            C13091zd.f50118a.execute(new RunnableC13061ya(this, context, c13103zp));
        }
        return c13103zp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13059xz
    /* renamed from: a */
    public final dbt<String> mo13985a(String str) {
        return dbh.m16899a(str);
    }
}
