package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.internal.util.h1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/h1.class */
final class CallableC5698h1 implements Callable<String> {

    /* renamed from: a */
    final /* synthetic */ Context f18480a;

    /* renamed from: b */
    final /* synthetic */ Context f18481b;

    public CallableC5698h1(C5702i1 c5702i1, Context context, Context context2) {
        this.f18480a = context;
        this.f18481b = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.f18480a != null) {
            C5722o1.m17990k("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.f18480a.getSharedPreferences("admob_user_agent", 0);
        } else {
            C5722o1.m17990k("Attempting to read user agent from local cache.");
            sharedPreferences = this.f18481b.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        String str = string;
        if (TextUtils.isEmpty(string)) {
            C5722o1.m17990k("Reading user agent from WebSettings");
            String defaultUserAgent = WebSettings.getDefaultUserAgent(this.f18481b);
            str = defaultUserAgent;
            if (z) {
                sharedPreferences.edit().putString("user_agent", defaultUserAgent).apply();
                C5722o1.m17990k("Persisting user agent.");
                str = defaultUserAgent;
            }
        }
        return str;
    }
}
