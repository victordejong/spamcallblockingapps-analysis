package com.google.android.gms.ads.p263v;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.common.C6094e;
/* renamed from: com.google.android.gms.ads.v.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/v/c.class */
public final class C5856c {

    /* renamed from: a */
    private SharedPreferences f18816a;

    public C5856c(Context context) {
        try {
            Context m17207d = C6094e.m17207d(context);
            this.f18816a = m17207d == null ? null : m17207d.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.f18816a = null;
        }
    }

    /* renamed from: a */
    public final boolean m17739a(String str, boolean z) {
        try {
            SharedPreferences sharedPreferences = this.f18816a;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(str, false);
            }
            return false;
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return false;
        }
    }

    /* renamed from: b */
    public final float m17738b(String str, float f) {
        try {
            SharedPreferences sharedPreferences = this.f18816a;
            if (sharedPreferences != null) {
                return sharedPreferences.getFloat(str, 0.0f);
            }
            return 0.0f;
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return 0.0f;
        }
    }

    /* renamed from: c */
    public final String m17737c(String str, String str2) {
        try {
            SharedPreferences sharedPreferences = this.f18816a;
            return sharedPreferences == null ? str2 : sharedPreferences.getString(str, str2);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return str2;
        }
    }
}
