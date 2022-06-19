package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.common.util.C2719p;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.xl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xl.class */
final class CallableC3628xl implements Callable<String> {

    /* renamed from: a */
    private final /* synthetic */ Context f17596a;

    public CallableC3628xl(C3625xi c3625xi, Context context) {
        this.f17596a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        SharedPreferences sharedPreferences = this.f17596a.getSharedPreferences("admob_user_agent", 0);
        String string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            C3556uu.m7052a("User agent is not initialized on Google Play Services. Initializing.");
            string = WebSettings.getDefaultUserAgent(this.f17596a);
            C2719p.m13827a(this.f17596a, sharedPreferences.edit().putString("user_agent", string), "admob_user_agent");
        } else {
            C3556uu.m7052a("User agent is already initialized on Google Play Services.");
        }
        return string;
    }
}
