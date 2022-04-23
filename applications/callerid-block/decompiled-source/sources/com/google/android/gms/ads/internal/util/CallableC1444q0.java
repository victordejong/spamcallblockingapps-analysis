package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.internal.util.q0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/q0.class */
final class CallableC1444q0 implements Callable<String> {

    /* renamed from: a */
    final /* synthetic */ Context f5621a;

    /* renamed from: b */
    final /* synthetic */ Context f5622b;

    CallableC1444q0(C1446r0 r0Var, Context context, Context context2) {
        this.f5621a = context;
        this.f5622b = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.f5621a != null) {
            y0.k("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.f5621a.getSharedPreferences("admob_user_agent", 0);
        } else {
            y0.k("Attempting to read user agent from local cache.");
            sharedPreferences = this.f5622b.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        String str = string;
        if (TextUtils.isEmpty(string)) {
            y0.k("Reading user agent from WebSettings");
            String defaultUserAgent = WebSettings.getDefaultUserAgent(this.f5622b);
            str = defaultUserAgent;
            if (z) {
                sharedPreferences.edit().putString("user_agent", defaultUserAgent).apply();
                y0.k("Persisting user agent.");
                str = defaultUserAgent;
            }
        }
        return str;
    }
}
