package com.google.android.gms.ads.query;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzcah;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/query/QueryInfo.class */
public class QueryInfo {
    private final zzbhv zza;

    public QueryInfo(zzbhv zzbhvVar) {
        this.zza = zzbhvVar;
    }

    @KeepForSdk
    public static void generate(@RecentlyNonNull Context context, @RecentlyNonNull AdFormat adFormat, AdRequest adRequest, @RecentlyNonNull QueryInfoGenerationCallback queryInfoGenerationCallback) {
        new zzcah(context, adFormat, adRequest == null ? null : adRequest.zza()).zzb(queryInfoGenerationCallback);
    }

    @RecentlyNonNull
    @KeepForSdk
    public String getQuery() {
        return this.zza.zza();
    }

    @RecentlyNonNull
    @KeepForSdk
    public Bundle getQueryBundle() {
        return this.zza.zzc();
    }

    @RecentlyNonNull
    @KeepForSdk
    public String getRequestId() {
        return this.zza.zzb();
    }

    public final zzbhv zza() {
        return this.zza;
    }
}
