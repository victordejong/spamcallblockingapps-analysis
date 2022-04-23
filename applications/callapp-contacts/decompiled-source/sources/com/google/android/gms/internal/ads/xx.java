package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xx.class */
public final class xx implements xz {
    @Override // com.google.android.gms.internal.ads.xz
    public final dbt<String> a() {
        return dbh.a((Object) null);
    }

    @Override // com.google.android.gms.internal.ads.xz
    public final dbt<AdvertisingIdClient.Info> a(Context context) {
        zp zpVar = new zp();
        ekb.a();
        if (yq.c(context)) {
            zd.f28573a.execute(new ya(this, context, zpVar));
        }
        return zpVar;
    }

    @Override // com.google.android.gms.internal.ads.xz
    public final dbt<String> a(String str) {
        return dbh.a(str);
    }
}
