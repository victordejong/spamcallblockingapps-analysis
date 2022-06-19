package com.google.android.gms.ads.p120c;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.common.C2595h;
/* renamed from: com.google.android.gms.ads.c.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/c/c.class */
public final class C2280c {

    /* renamed from: a */
    private SharedPreferences f6589a;

    public C2280c(Context context) {
        try {
            Context m14150d = C2595h.m14150d(context);
            this.f6589a = m14150d == null ? null : m14150d.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.f6589a = null;
        }
    }

    /* renamed from: a */
    public final float m14845a(String str, float f) {
        float f2;
        try {
            f2 = this.f6589a == null ? 0.0f : this.f6589a.getFloat(str, 0.0f);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            f2 = 0.0f;
        }
        return f2;
    }

    /* renamed from: a */
    public final String m14844a(String str, String str2) {
        try {
            if (this.f6589a != null) {
                str2 = this.f6589a.getString(str, str2);
            }
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
        }
        return str2;
    }

    /* renamed from: a */
    public final boolean m14843a(String str, boolean z) {
        boolean z2;
        try {
            z2 = this.f6589a == null ? false : this.f6589a.getBoolean(str, false);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            z2 = false;
        }
        return z2;
    }
}
