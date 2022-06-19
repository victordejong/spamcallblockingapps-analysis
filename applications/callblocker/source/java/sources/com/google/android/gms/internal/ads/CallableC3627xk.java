package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.xk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xk.class */
final class CallableC3627xk implements Callable<String> {

    /* renamed from: a */
    private final /* synthetic */ Context f17594a;

    /* renamed from: b */
    private final /* synthetic */ Context f17595b;

    public CallableC3627xk(C3625xi c3625xi, Context context, Context context2) {
        this.f17594a = context;
        this.f17595b = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.f17594a != null) {
            C3556uu.m7052a("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.f17594a.getSharedPreferences("admob_user_agent", 0);
        } else {
            C3556uu.m7052a("Attempting to read user agent from local cache.");
            sharedPreferences = this.f17595b.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        String str = string;
        if (TextUtils.isEmpty(string)) {
            C3556uu.m7052a("Reading user agent from WebSettings");
            String defaultUserAgent = WebSettings.getDefaultUserAgent(this.f17595b);
            str = defaultUserAgent;
            if (z) {
                sharedPreferences.edit().putString("user_agent", defaultUserAgent).apply();
                C3556uu.m7052a("Persisting user agent.");
                str = defaultUserAgent;
            }
        }
        return str;
    }
}
