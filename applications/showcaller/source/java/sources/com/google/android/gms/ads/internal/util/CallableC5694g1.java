package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.common.util.C6240r;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.internal.util.g1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/g1.class */
final class CallableC5694g1 implements Callable<String> {

    /* renamed from: a */
    final /* synthetic */ Context f18478a;

    public CallableC5694g1(C5702i1 c5702i1, Context context) {
        this.f18478a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        SharedPreferences sharedPreferences = this.f18478a.getSharedPreferences("admob_user_agent", 0);
        String string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            C5722o1.m17990k("User agent is not initialized on Google Play Services. Initializing.");
            string = WebSettings.getDefaultUserAgent(this.f18478a);
            C6240r.m16769a(this.f18478a, sharedPreferences.edit().putString("user_agent", string), "admob_user_agent");
        } else {
            C5722o1.m17990k("User agent is already initialized on Google Play Services.");
        }
        return string;
    }
}
