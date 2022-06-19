package com.unknownphone.callblocker.p186d;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.ads.C2298i;
/* renamed from: com.unknownphone.callblocker.d.c */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/d/c.class */
public class C5291c {

    /* renamed from: a */
    private static C2298i f22147a;

    /* renamed from: a */
    public static void m1046a(Context context) {
        if (context == null) {
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        if (sharedPreferences.contains("subscription_ends_at")) {
            return;
        }
        int i = sharedPreferences.getInt("click_counter", 0);
        Log.d("INTERSTITIAL_AD_HELPER", "clickCounter: " + i);
        if (i < 20) {
            sharedPreferences.edit().putInt("click_counter", i + 1).apply();
        } else if (!f22147a.m14812a()) {
        } else {
            f22147a.m14805b();
            sharedPreferences.edit().putInt("click_counter", 0).apply();
        }
    }

    /* renamed from: a */
    public static void m1045a(C2298i c2298i) {
        f22147a = c2298i;
    }
}
