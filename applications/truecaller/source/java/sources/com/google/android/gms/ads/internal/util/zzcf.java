package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzcf.class */
public final class zzcf implements Callable<String> {
    public final /* synthetic */ Context zza;

    public zzcf(zzch zzchVar, Context context) {
        this.zza = context;
    }

    @Override // java.util.concurrent.Callable
    public final String call() throws Exception {
        SharedPreferences sharedPreferences = this.zza.getSharedPreferences("admob_user_agent", 0);
        String string = sharedPreferences.getString(AnalyticsConstants.USER_AGENT, "");
        if (!TextUtils.isEmpty(string)) {
            zze.zza("User agent is already initialized on Google Play Services.");
            return string;
        }
        zze.zza("User agent is not initialized on Google Play Services. Initializing.");
        sharedPreferences.edit().putString(AnalyticsConstants.USER_AGENT, WebSettings.getDefaultUserAgent(this.zza));
        throw new IllegalStateException("world-readable shared preferences should only be used by apk");
    }
}
