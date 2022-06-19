package com.google.android.gms.ads.query;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzask;
import com.google.android.gms.internal.ads.zzzx;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/QueryInfo.class */
public class QueryInfo {
    private final zzzx zzhry;

    public QueryInfo(zzzx zzzxVar) {
        this.zzhry = zzzxVar;
    }

    @KeepForSdk
    public static void generate(Context context, AdFormat adFormat, AdRequest adRequest, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        new zzask(context, adFormat, adRequest == null ? null : adRequest.zzds()).zza(queryInfoGenerationCallback);
    }

    @KeepForSdk
    public String getQuery() {
        return this.zzhry.getQuery();
    }

    @KeepForSdk
    public Bundle getQueryBundle() {
        return this.zzhry.getQueryBundle();
    }

    @KeepForSdk
    public String getRequestId() {
        return zzzx.zza(this);
    }
}
