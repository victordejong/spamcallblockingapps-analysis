package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.common.util.q;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbt.class */
final class zzbt implements Callable<String> {
    private final /* synthetic */ Context val$context;

    zzbt(zzbu zzbuVar, Context context) {
        this.val$context = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        SharedPreferences sharedPreferences = this.val$context.getSharedPreferences("admob_user_agent", 0);
        String string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            zzd.zzed("User agent is not initialized on Google Play Services. Initializing.");
            string = WebSettings.getDefaultUserAgent(this.val$context);
            sharedPreferences.edit().putString("user_agent", string);
            q.a();
        } else {
            zzd.zzed("User agent is already initialized on Google Play Services.");
        }
        return string;
    }
}
