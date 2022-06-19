package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbw.class */
public final class zzbw implements Callable<String> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ Context zzeha;

    public zzbw(zzbu zzbuVar, Context context, Context context2) {
        this.zzeha = context;
        this.val$context = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.zzeha != null) {
            zzd.zzeb("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.zzeha.getSharedPreferences("admob_user_agent", 0);
        } else {
            zzd.zzeb("Attempting to read user agent from local cache.");
            sharedPreferences = this.val$context.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        String str = string;
        if (TextUtils.isEmpty(string)) {
            zzd.zzeb("Reading user agent from WebSettings");
            String defaultUserAgent = WebSettings.getDefaultUserAgent(this.val$context);
            str = defaultUserAgent;
            if (z) {
                sharedPreferences.edit().putString("user_agent", defaultUserAgent).apply();
                zzd.zzeb("Persisting user agent.");
                str = defaultUserAgent;
            }
        }
        return str;
    }
}
