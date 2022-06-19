package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.common.util.C1620q;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.internal.util.p0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/p0.class */
final class CallableC1442p0 implements Callable<String> {

    /* renamed from: a */
    final /* synthetic */ Context f5620a;

    CallableC1442p0(C1446r0 c1446r0, Context context) {
        this.f5620a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        SharedPreferences sharedPreferences = this.f5620a.getSharedPreferences("admob_user_agent", 0);
        String string = sharedPreferences.getString("user_agent", "");
        if (!TextUtils.isEmpty(string)) {
            y0.k("User agent is already initialized on Google Play Services.");
            return string;
        }
        y0.k("User agent is not initialized on Google Play Services. Initializing.");
        C1620q.m8202a(this.f5620a, sharedPreferences.edit().putString("user_agent", WebSettings.getDefaultUserAgent(this.f5620a)), "admob_user_agent");
        throw null;
    }
}
