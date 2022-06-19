package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzcg.class */
public final class zzcg implements Callable<String> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ Context zzb;

    public zzcg(zzch zzchVar, Context context, Context context2) {
        this.zza = context;
        this.zzb = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() throws Exception {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.zza != null) {
            zze.zza("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.zza.getSharedPreferences("admob_user_agent", 0);
        } else {
            zze.zza("Attempting to read user agent from local cache.");
            sharedPreferences = this.zzb.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString(AnalyticsConstants.USER_AGENT, "");
        String str = string;
        if (TextUtils.isEmpty(string)) {
            zze.zza("Reading user agent from WebSettings");
            String defaultUserAgent = WebSettings.getDefaultUserAgent(this.zzb);
            str = defaultUserAgent;
            if (z) {
                sharedPreferences.edit().putString(AnalyticsConstants.USER_AGENT, defaultUserAgent).apply();
                zze.zza("Persisting user agent.");
                str = defaultUserAgent;
            }
        }
        return str;
    }
}
